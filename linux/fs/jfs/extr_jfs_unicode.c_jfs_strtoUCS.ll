; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_unicode.c_jfs_strtoUCS.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_unicode.c_jfs_strtoUCS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 (i8*, i32, i64*)*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"jfs_strtoUCS: char2uni returned %d.\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"charset = %s, char = 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8*, i32, %struct.nls_table*)* @jfs_strtoUCS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_strtoUCS(i64* %0, i8* %1, i32 %2, %struct.nls_table* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nls_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nls_table* %3, %struct.nls_table** %9, align 8
  %12 = load %struct.nls_table*, %struct.nls_table** %9, align 8
  %13 = icmp ne %struct.nls_table* %12, null
  br i1 %13, label %14, label %61

14:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %50, %14
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i1 [ false, %15 ], [ %22, %18 ]
  br i1 %24, label %25, label %60

25:                                               ; preds = %23
  %26 = load %struct.nls_table*, %struct.nls_table** %9, align 8
  %27 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %26, i32 0, i32 0
  %28 = load i32 (i8*, i32, i64*)*, i32 (i8*, i32, i64*)** %27, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i64*, i64** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = call i32 %28(i8* %29, i32 %30, i64* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %49

38:                                               ; preds = %25
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i8*, i32, ...) @jfs_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.nls_table*, %struct.nls_table** %9, align 8
  %42 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = call i32 (i8*, i32, ...) @jfs_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %97

49:                                               ; preds = %25
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %8, align 4
  br label %15

60:                                               ; preds = %23
  br label %91

61:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %87, %61
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %66, %62
  %75 = phi i1 [ false, %62 ], [ %73, %66 ]
  br i1 %75, label %76, label %90

76:                                               ; preds = %74
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i64
  %83 = load i64*, i64** %6, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64 %82, i64* %86, align 8
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %62

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90, %60
  %92 = load i64*, i64** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %91, %38
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @jfs_err(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
