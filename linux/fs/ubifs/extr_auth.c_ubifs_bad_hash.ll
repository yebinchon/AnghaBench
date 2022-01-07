; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c_ubifs_bad_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c_ubifs_bad_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@UBIFS_HASH_ARR_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"hash mismatch on node at LEB %d:%d\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"hash expected:   %*ph%s\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"hash calculated: %*ph%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubifs_bad_hash(%struct.ubifs_info* %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @min(i32 %18, i32 20)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %29, i8** %13, align 8
  %30 = load i32, i32* @UBIFS_HASH_ARR_SZ, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %14, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %15, align 8
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @__ubifs_node_calc_hash(%struct.ubifs_info* %34, i8* %35, i32* %33)
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (%struct.ubifs_info*, i8*, i32, i32, ...) @ubifs_err(%struct.ubifs_info* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = ptrtoint i32* %43 to i32
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 (%struct.ubifs_info*, i8*, i32, i32, ...) @ubifs_err(%struct.ubifs_info* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %44, i8* %45)
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %48 = load i32, i32* %11, align 4
  %49 = ptrtoint i32* %33 to i32
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 (%struct.ubifs_info*, i8*, i32, i32, ...) @ubifs_err(%struct.ubifs_info* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %48, i32 %49, i8* %50)
  %52 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %52)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @__ubifs_node_calc_hash(%struct.ubifs_info*, i8*, i32*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
