; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_start_this_gp.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_start_this_gp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.rcu_node = type { i64, %struct.rcu_node*, i32 }
%struct.rcu_data = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"Startleaf\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Prestarted\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Startedleaf\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Startedleafroot\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Startedroot\00", align 1
@rcu_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RCU_GP_FLAG_INIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"NoGPkthread\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"newreq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcu_node*, %struct.rcu_data*, i64)* @rcu_start_this_gp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcu_start_this_gp(%struct.rcu_node* %0, %struct.rcu_data* %1, i64 %2) #0 {
  %4 = alloca %struct.rcu_node*, align 8
  %5 = alloca %struct.rcu_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rcu_node*, align 8
  store %struct.rcu_node* %0, %struct.rcu_node** %4, align 8
  store %struct.rcu_data* %1, %struct.rcu_data** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.rcu_node*, %struct.rcu_node** %4, align 8
  %10 = call i32 @raw_lockdep_assert_held_rcu_node(%struct.rcu_node* %9)
  %11 = load %struct.rcu_node*, %struct.rcu_node** %4, align 8
  %12 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @TPS(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @trace_rcu_this_gp(%struct.rcu_node* %11, %struct.rcu_data* %12, i64 %13, i32 %14)
  %16 = load %struct.rcu_node*, %struct.rcu_node** %4, align 8
  store %struct.rcu_node* %16, %struct.rcu_node** %8, align 8
  br label %17

17:                                               ; preds = %88, %3
  br i1 true, label %18, label %92

18:                                               ; preds = %17
  %19 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %20 = load %struct.rcu_node*, %struct.rcu_node** %4, align 8
  %21 = icmp ne %struct.rcu_node* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %24 = call i32 @raw_spin_lock_rcu_node(%struct.rcu_node* %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %27 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @ULONG_CMP_GE(i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %25
  %33 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %34 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %33, i32 0, i32 2
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @rcu_seq_started(i32* %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %32
  %39 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %40 = load %struct.rcu_node*, %struct.rcu_node** %4, align 8
  %41 = icmp ne %struct.rcu_node* %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %44 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %43, i32 0, i32 2
  %45 = call i32 @rcu_seq_current(i32* %44)
  %46 = call i64 @rcu_seq_state(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42, %32, %25
  %49 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %50 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @TPS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %53 = call i32 @trace_rcu_this_gp(%struct.rcu_node* %49, %struct.rcu_data* %50, i64 %51, i32 %52)
  br label %127

54:                                               ; preds = %42, %38
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %57 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %59 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %58, i32 0, i32 2
  %60 = call i32 @rcu_seq_current(i32* %59)
  %61 = call i64 @rcu_seq_state(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load %struct.rcu_node*, %struct.rcu_node** %4, align 8
  %65 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @TPS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %68 = call i32 @trace_rcu_this_gp(%struct.rcu_node* %64, %struct.rcu_data* %65, i64 %66, i32 %67)
  br label %127

69:                                               ; preds = %54
  %70 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %71 = load %struct.rcu_node*, %struct.rcu_node** %4, align 8
  %72 = icmp ne %struct.rcu_node* %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %75 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %74, i32 0, i32 1
  %76 = load %struct.rcu_node*, %struct.rcu_node** %75, align 8
  %77 = icmp ne %struct.rcu_node* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %80 = call i32 @raw_spin_unlock_rcu_node(%struct.rcu_node* %79)
  br label %81

81:                                               ; preds = %78, %73, %69
  %82 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %83 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %82, i32 0, i32 1
  %84 = load %struct.rcu_node*, %struct.rcu_node** %83, align 8
  %85 = icmp ne %struct.rcu_node* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  br label %92

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %90 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %89, i32 0, i32 1
  %91 = load %struct.rcu_node*, %struct.rcu_node** %90, align 8
  store %struct.rcu_node* %91, %struct.rcu_node** %8, align 8
  br label %17

92:                                               ; preds = %86, %17
  %93 = call i64 (...) @rcu_gp_in_progress()
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %97 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %98 = load i64, i64* %6, align 8
  %99 = call i32 @TPS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %100 = call i32 @trace_rcu_this_gp(%struct.rcu_node* %96, %struct.rcu_data* %97, i64 %98, i32 %99)
  br label %127

101:                                              ; preds = %92
  %102 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %103 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @TPS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %106 = call i32 @trace_rcu_this_gp(%struct.rcu_node* %102, %struct.rcu_data* %103, i64 %104, i32 %105)
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 0), align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 0), align 4
  %109 = load i32, i32* @RCU_GP_FLAG_INIT, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @WRITE_ONCE(i32 %107, i32 %110)
  %112 = load i32, i32* @jiffies, align 4
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 4), align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 3), align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %101
  %116 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %117 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = call i32 @TPS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %120 = call i32 @trace_rcu_this_gp(%struct.rcu_node* %116, %struct.rcu_data* %117, i64 %118, i32 %119)
  br label %127

121:                                              ; preds = %101
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 2), align 4
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 1), align 4
  %124 = call i32 @READ_ONCE(i32 %123)
  %125 = call i32 @TPS(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %126 = call i32 @trace_rcu_grace_period(i32 %122, i32 %124, i32 %125)
  store i32 1, i32* %7, align 4
  br label %127

127:                                              ; preds = %121, %115, %95, %63, %48
  %128 = load i64, i64* %6, align 8
  %129 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %130 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @ULONG_CMP_LT(i64 %128, i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %127
  %135 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %136 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.rcu_node*, %struct.rcu_node** %4, align 8
  %139 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %141 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %144 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %134, %127
  %146 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %147 = load %struct.rcu_node*, %struct.rcu_node** %4, align 8
  %148 = icmp ne %struct.rcu_node* %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load %struct.rcu_node*, %struct.rcu_node** %8, align 8
  %151 = call i32 @raw_spin_unlock_rcu_node(%struct.rcu_node* %150)
  br label %152

152:                                              ; preds = %149, %145
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @raw_lockdep_assert_held_rcu_node(%struct.rcu_node*) #1

declare dso_local i32 @trace_rcu_this_gp(%struct.rcu_node*, %struct.rcu_data*, i64, i32) #1

declare dso_local i32 @TPS(i8*) #1

declare dso_local i32 @raw_spin_lock_rcu_node(%struct.rcu_node*) #1

declare dso_local i64 @ULONG_CMP_GE(i64, i64) #1

declare dso_local i64 @rcu_seq_started(i32*, i64) #1

declare dso_local i64 @rcu_seq_state(i32) #1

declare dso_local i32 @rcu_seq_current(i32*) #1

declare dso_local i32 @raw_spin_unlock_rcu_node(%struct.rcu_node*) #1

declare dso_local i64 @rcu_gp_in_progress(...) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @trace_rcu_grace_period(i32, i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @ULONG_CMP_LT(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
