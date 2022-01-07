; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_extend.c_nf_ct_ext_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_extend.c_nf_ct_ext_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_ct_ext_type = type { i32 (%struct.nf_conn.0*)* }
%struct.nf_conn.0 = type opaque

@NF_CT_EXT_NUM = common dso_local global i32 0, align 4
@nf_ct_ext_types = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_ct_ext_destroy(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_ct_ext_type*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @NF_CT_EXT_NUM, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load i32*, i32** @nf_ct_ext_types, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.nf_ct_ext_type* @rcu_dereference(i32 %15)
  store %struct.nf_ct_ext_type* %16, %struct.nf_ct_ext_type** %4, align 8
  %17 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %4, align 8
  %18 = icmp ne %struct.nf_ct_ext_type* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %9
  %20 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %4, align 8
  %21 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %20, i32 0, i32 0
  %22 = load i32 (%struct.nf_conn.0*)*, i32 (%struct.nf_conn.0*)** %21, align 8
  %23 = icmp ne i32 (%struct.nf_conn.0*)* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %4, align 8
  %26 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %25, i32 0, i32 0
  %27 = load i32 (%struct.nf_conn.0*)*, i32 (%struct.nf_conn.0*)** %26, align 8
  %28 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %29 = bitcast %struct.nf_conn* %28 to %struct.nf_conn.0*
  %30 = call i32 %27(%struct.nf_conn.0* %29)
  br label %31

31:                                               ; preds = %24, %19, %9
  %32 = call i32 (...) @rcu_read_unlock()
  br label %33

33:                                               ; preds = %31
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %5

36:                                               ; preds = %5
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_ct_ext_type* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
