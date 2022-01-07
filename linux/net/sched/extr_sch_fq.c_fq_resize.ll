; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_resize.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_fq.c_fq_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32 }
%struct.Qdisc = type { i32 }
%struct.fq_sched_data = type { i32, %struct.rb_root* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global %struct.rb_root zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i32)* @fq_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_resize(%struct.Qdisc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fq_sched_data*, align 8
  %7 = alloca %struct.rb_root*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %11 = call %struct.fq_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.fq_sched_data* %11, %struct.fq_sched_data** %6, align 8
  %12 = load %struct.fq_sched_data*, %struct.fq_sched_data** %6, align 8
  %13 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %12, i32 0, i32 1
  %14 = load %struct.rb_root*, %struct.rb_root** %13, align 8
  %15 = icmp ne %struct.rb_root* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.fq_sched_data*, %struct.fq_sched_data** %6, align 8
  %19 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %85

23:                                               ; preds = %16, %2
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = shl i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %32 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netdev_queue_numa_node_read(i32 %33)
  %35 = call %struct.rb_root* @kvmalloc_node(i32 %27, i32 %30, i32 %34)
  store %struct.rb_root* %35, %struct.rb_root** %7, align 8
  %36 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %37 = icmp ne %struct.rb_root* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %23
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %85

41:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %53, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %5, align 4
  %45 = shl i32 1, %44
  %46 = icmp ult i32 %43, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %48, i64 %50
  %52 = bitcast %struct.rb_root* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 bitcast (%struct.rb_root* @RB_ROOT to i8*), i64 4, i1 false)
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %42

56:                                               ; preds = %42
  %57 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %58 = call i32 @sch_tree_lock(%struct.Qdisc* %57)
  %59 = load %struct.fq_sched_data*, %struct.fq_sched_data** %6, align 8
  %60 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %59, i32 0, i32 1
  %61 = load %struct.rb_root*, %struct.rb_root** %60, align 8
  %62 = bitcast %struct.rb_root* %61 to i8*
  store i8* %62, i8** %8, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %56
  %66 = load %struct.fq_sched_data*, %struct.fq_sched_data** %6, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.fq_sched_data*, %struct.fq_sched_data** %6, align 8
  %69 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @fq_rehash(%struct.fq_sched_data* %66, i8* %67, i32 %70, %struct.rb_root* %71, i32 %72)
  br label %74

74:                                               ; preds = %65, %56
  %75 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %76 = load %struct.fq_sched_data*, %struct.fq_sched_data** %6, align 8
  %77 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %76, i32 0, i32 1
  store %struct.rb_root* %75, %struct.rb_root** %77, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.fq_sched_data*, %struct.fq_sched_data** %6, align 8
  %80 = getelementptr inbounds %struct.fq_sched_data, %struct.fq_sched_data* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %82 = call i32 @sch_tree_unlock(%struct.Qdisc* %81)
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @fq_free(i8* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %74, %38, %22
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.fq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.rb_root* @kvmalloc_node(i32, i32, i32) #1

declare dso_local i32 @netdev_queue_numa_node_read(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @fq_rehash(%struct.fq_sched_data*, i8*, i32, %struct.rb_root*, i32) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local i32 @fq_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
