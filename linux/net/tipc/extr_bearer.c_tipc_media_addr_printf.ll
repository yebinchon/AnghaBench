; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_media_addr_printf.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_media_addr_printf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_media_addr = type { i32*, i32 }
%struct.tipc_media = type { i32, i32 (%struct.tipc_media_addr*, i8*, i32)* }

@MAX_ADDR_STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"UNKNOWN(%u)\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_media_addr_printf(i8* %0, i32 %1, %struct.tipc_media_addr* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tipc_media_addr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tipc_media*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tipc_media_addr* %2, %struct.tipc_media_addr** %6, align 8
  %12 = load i32, i32* @MAX_ADDR_STR, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %6, align 8
  %17 = getelementptr inbounds %struct.tipc_media_addr, %struct.tipc_media_addr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.tipc_media* @media_find_id(i32 %18)
  store %struct.tipc_media* %19, %struct.tipc_media** %9, align 8
  %20 = load %struct.tipc_media*, %struct.tipc_media** %9, align 8
  %21 = icmp ne %struct.tipc_media* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %3
  %23 = load %struct.tipc_media*, %struct.tipc_media** %9, align 8
  %24 = getelementptr inbounds %struct.tipc_media, %struct.tipc_media* %23, i32 0, i32 1
  %25 = load i32 (%struct.tipc_media_addr*, i8*, i32)*, i32 (%struct.tipc_media_addr*, i8*, i32)** %24, align 8
  %26 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %6, align 8
  %27 = trunc i64 %13 to i32
  %28 = call i32 %25(%struct.tipc_media_addr* %26, i8* %15, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %22
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.tipc_media*, %struct.tipc_media** %9, align 8
  %34 = getelementptr inbounds %struct.tipc_media, %struct.tipc_media* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %15)
  store i32 %36, i32* %10, align 4
  br label %70

37:                                               ; preds = %22, %3
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %6, align 8
  %41 = getelementptr inbounds %struct.tipc_media_addr, %struct.tipc_media_addr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %38, i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %66, %37
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %46, 8
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %6, align 8
  %57 = getelementptr inbounds %struct.tipc_media_addr, %struct.tipc_media_addr* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i32, i8*, i32, ...) @scnprintf(i8* %52, i32 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %48
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %44

69:                                               ; preds = %44
  br label %70

70:                                               ; preds = %69, %30
  %71 = load i32, i32* %10, align 4
  %72 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %72)
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tipc_media* @media_find_id(i32) #2

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
