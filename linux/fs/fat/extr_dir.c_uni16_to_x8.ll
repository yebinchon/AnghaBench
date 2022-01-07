; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_uni16_to_x8.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_uni16_to_x8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.nls_table = type { i32 (i32, i8*, i32)* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NLS_MAX_CHARSET_SIZE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"filename was truncated while converting.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32*, i32, %struct.nls_table*)* @uni16_to_x8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uni16_to_x8(%struct.super_block* %0, i8* %1, i32* %2, i32 %3, %struct.nls_table* %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nls_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.nls_table* %4, %struct.nls_table** %10, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32*, i32** %8, align 8
  store i32* %21, i32** %12, align 8
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %14, align 8
  br label %23

23:                                               ; preds = %76, %5
  %24 = load i32*, i32** %12, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @NLS_MAX_CHARSET_SIZE, align 4
  %30 = sub nsw i32 %28, %29
  %31 = icmp sgt i32 %30, 0
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i1 [ false, %23 ], [ %31, %27 ]
  br i1 %33, label %34, label %77

34:                                               ; preds = %32
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %12, align 8
  %37 = load i32, i32* %35, align 4
  store i32 %37, i32* %13, align 4
  %38 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %39 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %38, i32 0, i32 0
  %40 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %39, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i8*, i8** %14, align 8
  %43 = load i32, i32* @NLS_MAX_CHARSET_SIZE, align 4
  %44 = call i32 %40(i32 %41, i8* %42, i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %34
  %48 = load i32, i32* %15, align 4
  %49 = load i8*, i8** %14, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %14, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %76

55:                                               ; preds = %34
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load i8*, i8** %14, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %14, align 8
  store i8 58, i8* %59, align 1
  %61 = load i8*, i8** %14, align 8
  %62 = load i32, i32* %13, align 4
  %63 = ashr i32 %62, 8
  %64 = call i8* @hex_byte_pack(i8* %61, i32 %63)
  store i8* %64, i8** %14, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i8* @hex_byte_pack(i8* %65, i32 %66)
  store i8* %67, i8** %14, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, 5
  store i32 %69, i32* %9, align 4
  br label %75

70:                                               ; preds = %55
  %71 = load i8*, i8** %14, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %14, align 8
  store i8 63, i8* %71, align 1
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %70, %58
  br label %76

76:                                               ; preds = %75, %47
  br label %23

77:                                               ; preds = %32
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.super_block*, %struct.super_block** %6, align 8
  %84 = load i32, i32* @KERN_WARNING, align 4
  %85 = call i32 @fat_msg(%struct.super_block* %83, i32 %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %77
  %87 = load i8*, i8** %14, align 8
  store i8 0, i8* %87, align 1
  %88 = load i8*, i8** %14, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  ret i32 %93
}

declare dso_local %struct.TYPE_4__* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i8* @hex_byte_pack(i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fat_msg(%struct.super_block*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
