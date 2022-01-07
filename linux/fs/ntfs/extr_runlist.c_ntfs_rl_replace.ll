; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_runlist.c_ntfs_rl_replace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_runlist.c_ntfs_rl_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64 }

@LCN_ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_15__*, i32, %struct.TYPE_15__*, i32, i32)* @ntfs_rl_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @ntfs_rl_replace(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_15__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %18 = icmp ne %struct.TYPE_15__* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %23 = icmp ne %struct.TYPE_15__* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %5
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i64 -1
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i64 1
  %42 = call i32 @ntfs_are_rl_mergeable(%struct.TYPE_15__* %36, %struct.TYPE_15__* %41)
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %31, %5
  %44 = load i32, i32* %11, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i64 -1
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %53 = call i32 @ntfs_are_rl_mergeable(%struct.TYPE_15__* %51, %struct.TYPE_15__* %52)
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %46, %43
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* %13, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* %14, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %54
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %66, %67
  %69 = call %struct.TYPE_15__* @ntfs_rl_realloc(%struct.TYPE_15__* %64, i32 %65, i32 %68)
  store %struct.TYPE_15__* %69, %struct.TYPE_15__** %7, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %71 = call i64 @IS_ERR(%struct.TYPE_15__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %6, align 8
  br label %163

75:                                               ; preds = %63
  br label %76

76:                                               ; preds = %75, %54
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i64 -1
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i64 1
  %90 = call i32 @__ntfs_rl_merge(%struct.TYPE_15__* %84, %struct.TYPE_15__* %89)
  br label %91

91:                                               ; preds = %79, %76
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i64 -1
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %101 = call i32 @__ntfs_rl_merge(%struct.TYPE_15__* %99, %struct.TYPE_15__* %100)
  br label %102

102:                                              ; preds = %94, %91
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %103, %104
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* %13, align 4
  %111 = sub nsw i32 %109, %110
  store i32 %111, i32* %16, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %15, align 4
  %117 = sub nsw i32 %115, %116
  %118 = call i32 @ntfs_rl_mm(%struct.TYPE_15__* %112, i32 %113, i32 %114, i32 %117)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %13, align 4
  %125 = sub nsw i32 %123, %124
  %126 = call i32 @ntfs_rl_mc(%struct.TYPE_15__* %119, i32 %120, %struct.TYPE_15__* %121, i32 %122, i32 %125)
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %15, align 4
  %129 = sub nsw i32 %127, %128
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %161

131:                                              ; preds = %102
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @LCN_ENOENT, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %161

140:                                              ; preds = %131
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %142 = load i32, i32* %16, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %149 = load i32, i32* %16, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %147, %154
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 2
  store i64 %155, i64* %160, align 8
  br label %161

161:                                              ; preds = %140, %131, %102
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %162, %struct.TYPE_15__** %6, align 8
  br label %163

163:                                              ; preds = %161, %73
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  ret %struct.TYPE_15__* %164
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ntfs_are_rl_mergeable(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @ntfs_rl_realloc(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @__ntfs_rl_merge(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ntfs_rl_mm(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @ntfs_rl_mc(%struct.TYPE_15__*, i32, %struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
