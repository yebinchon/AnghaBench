; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_swap_names.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_swap_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@DNAME_INLINE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.dentry*)* @swap_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_names(%struct.dentry* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = call i32 @dname_external(%struct.dentry* %6)
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %2
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = call i32 @dname_external(%struct.dentry* %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @swap(i64 %19, i64 %23)
  br label %52

25:                                               ; preds = %10
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dentry*, %struct.dentry** %3, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dentry*, %struct.dentry** %3, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = call i32 @memcpy(i64 %28, i64 %32, i64 %37)
  %39 = load %struct.dentry*, %struct.dentry** %4, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.dentry*, %struct.dentry** %3, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load %struct.dentry*, %struct.dentry** %4, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.dentry*, %struct.dentry** %4, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  br label %52

52:                                               ; preds = %25, %15
  br label %118

53:                                               ; preds = %2
  %54 = load %struct.dentry*, %struct.dentry** %3, align 8
  %55 = call i32 @dname_external(%struct.dentry* %54)
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %53
  %59 = load %struct.dentry*, %struct.dentry** %3, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.dentry*, %struct.dentry** %4, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.dentry*, %struct.dentry** %4, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  %71 = call i32 @memcpy(i64 %61, i64 %65, i64 %70)
  %72 = load %struct.dentry*, %struct.dentry** %3, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.dentry*, %struct.dentry** %4, align 8
  %77 = getelementptr inbounds %struct.dentry, %struct.dentry* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  %79 = load %struct.dentry*, %struct.dentry** %3, align 8
  %80 = getelementptr inbounds %struct.dentry, %struct.dentry* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.dentry*, %struct.dentry** %3, align 8
  %83 = getelementptr inbounds %struct.dentry, %struct.dentry* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i64 %81, i64* %84, align 8
  br label %117

85:                                               ; preds = %53
  %86 = load i32, i32* @DNAME_INLINE_LEN, align 4
  %87 = call i32 @IS_ALIGNED(i32 %86, i32 8)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @BUILD_BUG_ON(i32 %90)
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %113, %85
  %93 = load i32, i32* %5, align 4
  %94 = zext i32 %93 to i64
  %95 = load i32, i32* @DNAME_INLINE_LEN, align 4
  %96 = sext i32 %95 to i64
  %97 = udiv i64 %96, 8
  %98 = icmp ult i64 %94, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %92
  %100 = load %struct.dentry*, %struct.dentry** %3, align 8
  %101 = getelementptr inbounds %struct.dentry, %struct.dentry* %100, i32 0, i32 0
  %102 = load i32, i32* %5, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.dentry*, %struct.dentry** %4, align 8
  %107 = getelementptr inbounds %struct.dentry, %struct.dentry* %106, i32 0, i32 0
  %108 = load i32, i32* %5, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @swap(i64 %105, i64 %111)
  br label %113

113:                                              ; preds = %99
  %114 = load i32, i32* %5, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %92

116:                                              ; preds = %92
  br label %117

117:                                              ; preds = %116, %58
  br label %118

118:                                              ; preds = %117, %52
  %119 = load %struct.dentry*, %struct.dentry** %3, align 8
  %120 = getelementptr inbounds %struct.dentry, %struct.dentry* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.dentry*, %struct.dentry** %4, align 8
  %124 = getelementptr inbounds %struct.dentry, %struct.dentry* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @swap(i64 %122, i64 %126)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dname_external(%struct.dentry*) #1

declare dso_local i32 @swap(i64, i64) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
