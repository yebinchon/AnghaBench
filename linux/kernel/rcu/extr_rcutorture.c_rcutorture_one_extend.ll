; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcutorture_one_extend.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcutorture_one_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (%struct.torture_random_state*, %struct.rt_read_seg*)*, i32 (i32)* }
%struct.torture_random_state = type { i32 }
%struct.rt_read_seg = type { i32 }

@RCUTORTURE_RDR_SHIFT = common dso_local global i32 0, align 4
@RCUTORTURE_RDR_BH = common dso_local global i32 0, align 4
@RCUTORTURE_RDR_IRQ = common dso_local global i32 0, align 4
@RCUTORTURE_RDR_PREEMPT = common dso_local global i32 0, align 4
@RCUTORTURE_RDR_RBH = common dso_local global i32 0, align 4
@RCUTORTURE_RDR_SCHED = common dso_local global i32 0, align 4
@RCUTORTURE_RDR_RCU = common dso_local global i32 0, align 4
@cur_ops = common dso_local global %struct.TYPE_2__* null, align 8
@RCUTORTURE_RDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.torture_random_state*, %struct.rt_read_seg*)* @rcutorture_one_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcutorture_one_extend(i32* %0, i32 %1, %struct.torture_random_state* %2, %struct.rt_read_seg* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.torture_random_state*, align 8
  %8 = alloca %struct.rt_read_seg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.torture_random_state* %2, %struct.torture_random_state** %7, align 8
  store %struct.rt_read_seg* %3, %struct.rt_read_seg** %8, align 8
  store i32 -1, i32* %9, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON_ONCE(i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @RCUTORTURE_RDR_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = icmp sgt i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON_ONCE(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.rt_read_seg*, %struct.rt_read_seg** %8, align 8
  %37 = getelementptr inbounds %struct.rt_read_seg, %struct.rt_read_seg* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @RCUTORTURE_RDR_BH, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = call i32 (...) @local_bh_disable()
  br label %44

44:                                               ; preds = %42, %4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @RCUTORTURE_RDR_IRQ, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 (...) @local_irq_disable()
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @RCUTORTURE_RDR_PREEMPT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 (...) @preempt_disable()
  br label %58

58:                                               ; preds = %56, %51
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @RCUTORTURE_RDR_RBH, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 (...) @rcu_read_lock_bh()
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @RCUTORTURE_RDR_SCHED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 (...) @rcu_read_lock_sched()
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @RCUTORTURE_RDR_RCU, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32 (...)*, i32 (...)** %79, align 8
  %81 = call i32 (...) %80()
  %82 = load i32, i32* @RCUTORTURE_RDR_SHIFT, align 4
  %83 = shl i32 %81, %82
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %77, %72
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @RCUTORTURE_RDR_IRQ, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call i32 (...) @local_irq_enable()
  br label %91

91:                                               ; preds = %89, %84
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @RCUTORTURE_RDR_BH, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 (...) @local_bh_enable()
  br label %98

98:                                               ; preds = %96, %91
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @RCUTORTURE_RDR_PREEMPT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 (...) @preempt_enable()
  br label %105

105:                                              ; preds = %103, %98
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @RCUTORTURE_RDR_RBH, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = call i32 (...) @rcu_read_unlock_bh()
  br label %112

112:                                              ; preds = %110, %105
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @RCUTORTURE_RDR_SCHED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = call i32 (...) @rcu_read_unlock_sched()
  br label %119

119:                                              ; preds = %117, %112
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @RCUTORTURE_RDR_RCU, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i32 (i32)*, i32 (i32)** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @RCUTORTURE_RDR_SHIFT, align 4
  %130 = ashr i32 %128, %129
  %131 = call i32 %127(i32 %130)
  br label %132

132:                                              ; preds = %124, %119
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %152

138:                                              ; preds = %135, %132
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %138
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i32 (%struct.torture_random_state*, %struct.rt_read_seg*)*, i32 (%struct.torture_random_state*, %struct.rt_read_seg*)** %147, align 8
  %149 = load %struct.torture_random_state*, %struct.torture_random_state** %7, align 8
  %150 = load %struct.rt_read_seg*, %struct.rt_read_seg** %8, align 8
  %151 = call i32 %148(%struct.torture_random_state* %149, %struct.rt_read_seg* %150)
  br label %152

152:                                              ; preds = %145, %142, %138, %135
  %153 = load i32, i32* %9, align 4
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @RCUTORTURE_RDR_MASK, align 4
  %158 = xor i32 %157, -1
  %159 = and i32 %156, %158
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %155, %152
  %161 = load i32, i32* %9, align 4
  %162 = icmp slt i32 %161, 0
  %163 = zext i1 %162 to i32
  %164 = call i32 @WARN_ON_ONCE(i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @RCUTORTURE_RDR_SHIFT, align 4
  %167 = ashr i32 %165, %166
  %168 = icmp sgt i32 %167, 1
  %169 = zext i1 %168 to i32
  %170 = call i32 @WARN_ON_ONCE(i32 %169)
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %6, align 4
  %173 = or i32 %171, %172
  %174 = load i32*, i32** %5, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32*, i32** %5, align 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @RCUTORTURE_RDR_SHIFT, align 4
  %178 = ashr i32 %176, %177
  %179 = icmp slt i32 %178, 0
  %180 = zext i1 %179 to i32
  %181 = call i32 @WARN_ON_ONCE(i32 %180)
  %182 = load i32*, i32** %5, align 8
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @RCUTORTURE_RDR_SHIFT, align 4
  %185 = ashr i32 %183, %184
  %186 = icmp sgt i32 %185, 1
  %187 = zext i1 %186 to i32
  %188 = call i32 @WARN_ON_ONCE(i32 %187)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local i32 @rcu_read_lock_sched(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

declare dso_local i32 @rcu_read_unlock_sched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
