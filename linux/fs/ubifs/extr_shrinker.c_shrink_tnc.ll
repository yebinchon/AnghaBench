; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_shrinker.c_shrink_tnc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_shrinker.c_shrink_tnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.ubifs_znode = type { i64, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@ubifs_clean_zn_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32, i32*)* @shrink_tnc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shrink_tnc(%struct.ubifs_info* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_znode*, align 8
  %12 = alloca %struct.ubifs_znode*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = call i64 (...) @ktime_get_seconds()
  store i64 %15, i64* %13, align 8
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 3
  %19 = call i32 @mutex_is_locked(i32* %18)
  %20 = call i32 @ubifs_assert(%struct.ubifs_info* %16, i32 %19)
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 2
  %24 = call i32 @mutex_is_locked(i32* %23)
  %25 = call i32 @ubifs_assert(%struct.ubifs_info* %21, i32 %24)
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 1
  %34 = call i64 @atomic_long_read(i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %4
  store i32 0, i32* %5, align 4
  br label %136

37:                                               ; preds = %31
  store %struct.ubifs_znode* null, %struct.ubifs_znode** %12, align 8
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call %struct.ubifs_znode* @ubifs_tnc_levelorder_next(%struct.ubifs_info* %38, i32* %42, %struct.ubifs_znode* null)
  store %struct.ubifs_znode* %43, %struct.ubifs_znode** %11, align 8
  br label %44

44:                                               ; preds = %124, %37
  %45 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %46 = icmp ne %struct.ubifs_znode* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 1
  %54 = call i64 @atomic_long_read(i32* %53)
  %55 = icmp sgt i64 %54, 0
  br label %56

56:                                               ; preds = %51, %47, %44
  %57 = phi i1 [ false, %47 ], [ false, %44 ], [ %55, %51 ]
  br i1 %57, label %58, label %134

58:                                               ; preds = %56
  %59 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %60 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32*, i32** %9, align 8
  store i32 1, i32* %64, align 4
  br label %113

65:                                               ; preds = %58
  %66 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %67 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %112, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %13, align 8
  %71 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %72 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = call i32 @abs(i64 %74)
  %76 = load i32, i32* %8, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %112

78:                                               ; preds = %69
  %79 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %80 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = icmp ne %struct.TYPE_5__* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %85 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %84, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %90 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store i32* null, i32** %93, align 8
  br label %98

94:                                               ; preds = %78
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %96 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %94, %83
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %100 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %101 = call i32 @ubifs_destroy_tnc_subtree(%struct.ubifs_info* %99, %struct.ubifs_znode* %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @atomic_long_sub(i32 %102, i32* @ubifs_clean_zn_cnt)
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %106 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %105, i32 0, i32 1
  %107 = call i32 @atomic_long_sub(i32 %104, i32* %106)
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %10, align 4
  %111 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  store %struct.ubifs_znode* %111, %struct.ubifs_znode** %11, align 8
  br label %112

112:                                              ; preds = %98, %69, %65
  br label %113

113:                                              ; preds = %112, %63
  %114 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %115 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %134

124:                                              ; preds = %113
  %125 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  store %struct.ubifs_znode* %125, %struct.ubifs_znode** %12, align 8
  %126 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %127 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %128 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %132 = call %struct.ubifs_znode* @ubifs_tnc_levelorder_next(%struct.ubifs_info* %126, i32* %130, %struct.ubifs_znode* %131)
  store %struct.ubifs_znode* %132, %struct.ubifs_znode** %11, align 8
  %133 = call i32 (...) @cond_resched()
  br label %44

134:                                              ; preds = %123, %56
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %36
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i64 @ktime_get_seconds(...) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local %struct.ubifs_znode* @ubifs_tnc_levelorder_next(%struct.ubifs_info*, i32*, %struct.ubifs_znode*) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @ubifs_destroy_tnc_subtree(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i32 @atomic_long_sub(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
