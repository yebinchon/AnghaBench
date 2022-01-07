; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_corrupt_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_corrupt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"filled bytes %u-%u with %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0xFFs\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"random data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*, i32)* @corrupt_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corrupt_data(%struct.ubifs_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = call i32 @chance(i32 1, i32 2)
  store i32 %11, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %10, align 8
  %13 = call i32 (...) @prandom_u32()
  %14 = load i32, i32* %6, align 4
  %15 = urem i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add i32 %17, 1
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ALIGN(i32 %18, i32 %21)
  %23 = call i32 @min(i32 %16, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub i32 %26, 1
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @ubifs_warn(%struct.ubifs_info* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27, i8* %31)
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %3
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub i32 %40, %41
  %43 = call i32 @memset(i8* %39, i32 255, i32 %42)
  br label %53

44:                                               ; preds = %3
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub i32 %49, %50
  %52 = call i32 @prandom_bytes(i8* %48, i32 %51)
  br label %53

53:                                               ; preds = %44, %35
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @chance(i32, i32) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_warn(%struct.ubifs_info*, i8*, i32, i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @prandom_bytes(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
