; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_alter_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_alter_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_conn_help = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Altering reply tuple of %p to \00", align 1
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_conntrack_alter_reply(%struct.nf_conn* %0, %struct.nf_conntrack_tuple* %1) #0 {
  %3 = alloca %struct.nf_conn*, align 8
  %4 = alloca %struct.nf_conntrack_tuple*, align 8
  %5 = alloca %struct.nf_conn_help*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %3, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %4, align 8
  %6 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %7 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %6)
  store %struct.nf_conn_help* %7, %struct.nf_conn_help** %5, align 8
  %8 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %9 = call i32 @nf_ct_is_confirmed(%struct.nf_conn* %8)
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.nf_conn* %11)
  %13 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %14 = call i32 @nf_ct_dump_tuple(%struct.nf_conntrack_tuple* %13)
  %15 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %16 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %22 = bitcast %struct.nf_conntrack_tuple* %20 to i8*
  %23 = bitcast %struct.nf_conntrack_tuple* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %25 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %2
  %29 = load %struct.nf_conn_help*, %struct.nf_conn_help** %5, align 8
  %30 = icmp ne %struct.nf_conn_help* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.nf_conn_help*, %struct.nf_conn_help** %5, align 8
  %33 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %32, i32 0, i32 0
  %34 = call i32 @hlist_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %2
  br label %43

37:                                               ; preds = %31, %28
  %38 = call i32 (...) @rcu_read_lock()
  %39 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call i32 @__nf_ct_try_assign_helper(%struct.nf_conn* %39, i32* null, i32 %40)
  %42 = call i32 (...) @rcu_read_unlock()
  br label %43

43:                                               ; preds = %37, %36
  ret void
}

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i32 @pr_debug(i8*, %struct.nf_conn*) #1

declare dso_local i32 @nf_ct_dump_tuple(%struct.nf_conntrack_tuple*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @__nf_ct_try_assign_helper(%struct.nf_conn*, i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
