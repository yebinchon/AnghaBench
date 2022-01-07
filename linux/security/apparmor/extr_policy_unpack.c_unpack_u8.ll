; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_u8.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_u8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ext = type { i8* }

@AA_U8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_ext*, i32*, i8*)* @unpack_u8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_u8(%struct.aa_ext* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_ext*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.aa_ext* %0, %struct.aa_ext** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %10 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %8, align 8
  %12 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %13 = load i32, i32* @AA_U8, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @unpack_nameX(%struct.aa_ext* %12, i32 %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %3
  %18 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %19 = call i32 @inbounds(%struct.aa_ext* %18, i32 4)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %38

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %27 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = call i32 @get_unaligned(i32* %29)
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %25, %22
  %33 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %34 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr i8, i8* %35, i64 4
  store i8* %36, i8** %34, align 8
  store i32 1, i32* %4, align 4
  br label %42

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %37, %21
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.aa_ext*, %struct.aa_ext** %5, align 8
  %41 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %32
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @unpack_nameX(%struct.aa_ext*, i32, i8*) #1

declare dso_local i32 @inbounds(%struct.aa_ext*, i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
