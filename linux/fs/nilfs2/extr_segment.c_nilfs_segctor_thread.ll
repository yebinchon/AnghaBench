; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_thread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_segctor_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sc_info = type { i32, i32, i32, i64, i64, i32, i32*, i32, %struct.TYPE_3__, i32, i64, %struct.TYPE_4__*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }

@current = common dso_local global i8* null, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"segctord starting. Construction interval = %lu seconds, CP frequency < %lu seconds\00", align 1
@HZ = common dso_local global i32 0, align 4
@NILFS_SEGCTOR_QUIT = common dso_local global i32 0, align 4
@SC_LSEG_SR = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@NILFS_SEGCTOR_COMMIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @nilfs_segctor_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_segctor_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nilfs_sc_info*, align 8
  %4 = alloca %struct.the_nilfs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.nilfs_sc_info*
  store %struct.nilfs_sc_info* %9, %struct.nilfs_sc_info** %3, align 8
  %10 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %11 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %10, i32 0, i32 11
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.the_nilfs*, %struct.the_nilfs** %13, align 8
  store %struct.the_nilfs* %14, %struct.the_nilfs** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load i8*, i8** @current, align 8
  %16 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %17 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %16, i32 0, i32 12
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @current, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %21 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %20, i32 0, i32 6
  store i32* %19, i32** %21, align 8
  %22 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %23 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %22, i32 0, i32 5
  %24 = call i32 @wake_up(i32* %23)
  %25 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %26 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %25, i32 0, i32 11
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* @KERN_INFO, align 4
  %29 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %30 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @HZ, align 4
  %33 = sdiv i32 %31, %32
  %34 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %35 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HZ, align 4
  %38 = sdiv i32 %36, %37
  %39 = call i32 @nilfs_msg(%struct.TYPE_4__* %27, i32 %28, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38)
  %40 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %41 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %40, i32 0, i32 7
  %42 = call i32 @spin_lock(i32* %41)
  br label %43

43:                                               ; preds = %177, %1
  br label %44

44:                                               ; preds = %75, %43
  %45 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %46 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NILFS_SEGCTOR_QUIT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %178

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %57 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %60 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55, %52
  %64 = load i32, i32* @SC_LSEG_SR, align 4
  store i32 %64, i32* %6, align 4
  br label %75

65:                                               ; preds = %55
  %66 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %67 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %66, i32 0, i32 10
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %72 = call i32 @nilfs_segctor_flush_mode(%struct.nilfs_sc_info* %71)
  store i32 %72, i32* %6, align 4
  br label %74

73:                                               ; preds = %65
  br label %85

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %63
  %76 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %77 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %76, i32 0, i32 7
  %78 = call i32 @spin_unlock(i32* %77)
  %79 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @nilfs_segctor_thread_construct(%struct.nilfs_sc_info* %79, i32 %80)
  %82 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %83 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %82, i32 0, i32 7
  %84 = call i32 @spin_lock(i32* %83)
  store i32 0, i32* %5, align 4
  br label %44

85:                                               ; preds = %73
  %86 = load i8*, i8** @current, align 8
  %87 = call i64 @freezing(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %91 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %90, i32 0, i32 7
  %92 = call i32 @spin_unlock(i32* %91)
  %93 = call i32 (...) @try_to_freeze()
  %94 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %95 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %94, i32 0, i32 7
  %96 = call i32 @spin_lock(i32* %95)
  br label %177

97:                                               ; preds = %85
  %98 = load i32, i32* @wait, align 4
  %99 = call i32 @DEFINE_WAIT(i32 %98)
  store i32 1, i32* %7, align 4
  %100 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %101 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %100, i32 0, i32 9
  %102 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %103 = call i32 @prepare_to_wait(i32* %101, i32* @wait, i32 %102)
  %104 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %105 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %108 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  store i32 0, i32* %7, align 4
  br label %134

112:                                              ; preds = %97
  %113 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %114 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %113, i32 0, i32 10
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 0, i32* %7, align 4
  br label %133

118:                                              ; preds = %112
  %119 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %120 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @NILFS_SEGCTOR_COMMIT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %118
  %126 = load i32, i32* @jiffies, align 4
  %127 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %128 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %127, i32 0, i32 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @time_before(i32 %126, i32 %130)
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %125, %118
  br label %133

133:                                              ; preds = %132, %117
  br label %134

134:                                              ; preds = %133, %111
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %139 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %138, i32 0, i32 7
  %140 = call i32 @spin_unlock(i32* %139)
  %141 = call i32 (...) @schedule()
  %142 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %143 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %142, i32 0, i32 7
  %144 = call i32 @spin_lock(i32* %143)
  br label %145

145:                                              ; preds = %137, %134
  %146 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %147 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %146, i32 0, i32 9
  %148 = call i32 @finish_wait(i32* %147, i32* @wait)
  %149 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %150 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @NILFS_SEGCTOR_COMMIT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %145
  %156 = load i32, i32* @jiffies, align 4
  %157 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %158 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %157, i32 0, i32 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @time_after_eq(i32 %156, i32 %160)
  %162 = icmp ne i64 %161, 0
  br label %163

163:                                              ; preds = %155, %145
  %164 = phi i1 [ false, %145 ], [ %162, %155 ]
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %5, align 4
  %166 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %167 = call i64 @nilfs_sb_dirty(%struct.the_nilfs* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %163
  %170 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %171 = call i64 @nilfs_sb_need_update(%struct.the_nilfs* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %175 = call i32 @set_nilfs_discontinued(%struct.the_nilfs* %174)
  br label %176

176:                                              ; preds = %173, %169, %163
  br label %177

177:                                              ; preds = %176, %89
  br label %43

178:                                              ; preds = %51
  %179 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %180 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %179, i32 0, i32 7
  %181 = call i32 @spin_unlock(i32* %180)
  %182 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %183 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %182, i32 0, i32 6
  store i32* null, i32** %183, align 8
  %184 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %3, align 8
  %185 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %184, i32 0, i32 5
  %186 = call i32 @wake_up(i32* %185)
  ret i32 0
}

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @nilfs_msg(%struct.TYPE_4__*, i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @nilfs_segctor_flush_mode(%struct.nilfs_sc_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nilfs_segctor_thread_construct(%struct.nilfs_sc_info*, i32) #1

declare dso_local i64 @freezing(i8*) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @time_before(i32, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i64 @time_after_eq(i32, i32) #1

declare dso_local i64 @nilfs_sb_dirty(%struct.the_nilfs*) #1

declare dso_local i64 @nilfs_sb_need_update(%struct.the_nilfs*) #1

declare dso_local i32 @set_nilfs_discontinued(%struct.the_nilfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
