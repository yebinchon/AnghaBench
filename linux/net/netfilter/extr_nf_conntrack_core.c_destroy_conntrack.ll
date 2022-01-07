; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_destroy_conntrack.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_destroy_conntrack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack = type { i32 }
%struct.nf_conn = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"destroy_conntrack(%p)\0A\00", align 1
@IPPROTO_GRE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"destroy_conntrack: returning ct=%p to slab\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conntrack*)* @destroy_conntrack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_conntrack(%struct.nf_conntrack* %0) #0 {
  %2 = alloca %struct.nf_conntrack*, align 8
  %3 = alloca %struct.nf_conn*, align 8
  store %struct.nf_conntrack* %0, %struct.nf_conntrack** %2, align 8
  %4 = load %struct.nf_conntrack*, %struct.nf_conntrack** %2, align 8
  %5 = bitcast %struct.nf_conntrack* %4 to %struct.nf_conn*
  store %struct.nf_conn* %5, %struct.nf_conn** %3, align 8
  %6 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.nf_conn* %6)
  %8 = load %struct.nf_conntrack*, %struct.nf_conntrack** %2, align 8
  %9 = getelementptr inbounds %struct.nf_conntrack, %struct.nf_conntrack* %8, i32 0, i32 0
  %10 = call i64 @atomic_read(i32* %9)
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %15 = call i32 @nf_ct_is_template(%struct.nf_conn* %14)
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %20 = call i32 @nf_ct_tmpl_free(%struct.nf_conn* %19)
  br label %53

21:                                               ; preds = %1
  %22 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %23 = call i64 @nf_ct_protonum(%struct.nf_conn* %22)
  %24 = load i64, i64* @IPPROTO_GRE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %31 = call i32 @destroy_gre_conntrack(%struct.nf_conn* %30)
  br label %32

32:                                               ; preds = %29, %21
  %33 = call i32 (...) @local_bh_disable()
  %34 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %35 = call i32 @nf_ct_remove_expectations(%struct.nf_conn* %34)
  %36 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %37 = call i32 @nf_ct_del_from_dying_or_unconfirmed_list(%struct.nf_conn* %36)
  %38 = call i32 (...) @local_bh_enable()
  %39 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %40 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %45 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @nf_ct_put(i64 %46)
  br label %48

48:                                               ; preds = %43, %32
  %49 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.nf_conn* %49)
  %51 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %52 = call i32 @nf_conntrack_free(%struct.nf_conn* %51)
  br label %53

53:                                               ; preds = %48, %18
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.nf_conn*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nf_ct_is_template(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_tmpl_free(%struct.nf_conn*) #1

declare dso_local i64 @nf_ct_protonum(%struct.nf_conn*) #1

declare dso_local i32 @destroy_gre_conntrack(%struct.nf_conn*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @nf_ct_remove_expectations(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_del_from_dying_or_unconfirmed_list(%struct.nf_conn*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @nf_ct_put(i64) #1

declare dso_local i32 @nf_conntrack_free(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
