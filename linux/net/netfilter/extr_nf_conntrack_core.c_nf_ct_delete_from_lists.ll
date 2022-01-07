; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_delete_from_lists.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_delete_from_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }

@nf_conntrack_generation = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conn*)* @nf_ct_delete_from_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_ct_delete_from_lists(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  %7 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %8 = call %struct.net* @nf_ct_net(%struct.nf_conn* %7)
  store %struct.net* %8, %struct.net** %3, align 8
  %9 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %10 = call i32 @nf_ct_helper_destroy(%struct.nf_conn* %9)
  %11 = call i32 (...) @local_bh_disable()
  br label %12

12:                                               ; preds = %30, %1
  %13 = call i32 @read_seqcount_begin(i32* @nf_conntrack_generation)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.net*, %struct.net** %3, align 8
  %15 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %16 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @hash_conntrack(%struct.net* %14, i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.net*, %struct.net** %3, align 8
  %23 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %24 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @hash_conntrack(%struct.net* %22, i32* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %12
  %31 = load %struct.net*, %struct.net** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @nf_conntrack_double_lock(%struct.net* %31, i32 %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %12, label %37

37:                                               ; preds = %30
  %38 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %39 = call i32 @clean_from_lists(%struct.nf_conn* %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @nf_conntrack_double_unlock(i32 %40, i32 %41)
  %43 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %44 = call i32 @nf_ct_add_to_dying_list(%struct.nf_conn* %43)
  %45 = call i32 (...) @local_bh_enable()
  ret void
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_helper_destroy(%struct.nf_conn*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i32 @hash_conntrack(%struct.net*, i32*) #1

declare dso_local i64 @nf_conntrack_double_lock(%struct.net*, i32, i32, i32) #1

declare dso_local i32 @clean_from_lists(%struct.nf_conn*) #1

declare dso_local i32 @nf_conntrack_double_unlock(i32, i32) #1

declare dso_local i32 @nf_ct_add_to_dying_list(%struct.nf_conn*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
