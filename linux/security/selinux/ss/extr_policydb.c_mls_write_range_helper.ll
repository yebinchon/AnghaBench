; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_mls_write_range_helper.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_mls_write_range_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mls_range = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mls_range*, i8*)* @mls_write_range_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mls_write_range_helper(%struct.mls_range* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mls_range*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mls_range* %0, %struct.mls_range** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %11 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 1
  %14 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %15 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 0
  %18 = call i32 @mls_level_eq(%struct.TYPE_3__* %13, %struct.TYPE_3__* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i64 2, i64* %7, align 8
  br label %23

22:                                               ; preds = %2
  store i64 3, i64* %7, align 8
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i64, i64* %7, align 8
  %25 = sub i64 %24, 1
  %26 = call i32 @cpu_to_le32(i64 %25)
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %29 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @cpu_to_le32(i64 %33)
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %23
  %39 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %40 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @cpu_to_le32(i64 %44)
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %38, %23
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %50 = call i64 @ARRAY_SIZE(i32* %49)
  %51 = icmp ugt i64 %48, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %55 = load i64, i64* %7, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @put_entry(i32* %54, i32 4, i64 %55, i8* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %47
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %91

62:                                               ; preds = %47
  %63 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %64 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @ebitmap_write(i32* %67, i8* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %91

74:                                               ; preds = %62
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %74
  %78 = load %struct.mls_range*, %struct.mls_range** %4, align 8
  %79 = getelementptr inbounds %struct.mls_range, %struct.mls_range* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @ebitmap_write(i32* %82, i8* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %91

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %74
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %87, %72, %60
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @mls_level_eq(%struct.TYPE_3__*, %struct.TYPE_3__*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @put_entry(i32*, i32, i64, i8*) #1

declare dso_local i32 @ebitmap_write(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
