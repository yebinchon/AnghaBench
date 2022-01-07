; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_gre.c_nf_ct_gre_keymap_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_gre.c_nf_ct_gre_keymap_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_ct_pptp_master = type { %struct.nf_conn** }

@.str = private unnamed_addr constant [20 x i8] c"entering for ct %p\0A\00", align 1
@keymap_lock = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@IP_CT_DIR_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"removing %p from list\0A\00", align 1
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_ct_gre_keymap_destroy(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca %struct.nf_ct_pptp_master*, align 8
  %4 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  %5 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %6 = call %struct.nf_ct_pptp_master* @nfct_help_data(%struct.nf_conn* %5)
  store %struct.nf_ct_pptp_master* %6, %struct.nf_ct_pptp_master** %3, align 8
  %7 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.nf_conn* %7)
  %9 = call i32 @spin_lock_bh(i32* @keymap_lock)
  %10 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %58, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IP_CT_DIR_MAX, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  %16 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %3, align 8
  %17 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %16, i32 0, i32 0
  %18 = load %struct.nf_conn**, %struct.nf_conn*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.nf_conn*, %struct.nf_conn** %18, i64 %20
  %22 = load %struct.nf_conn*, %struct.nf_conn** %21, align 8
  %23 = icmp ne %struct.nf_conn* %22, null
  br i1 %23, label %24, label %57

24:                                               ; preds = %15
  %25 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %3, align 8
  %26 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %25, i32 0, i32 0
  %27 = load %struct.nf_conn**, %struct.nf_conn*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.nf_conn*, %struct.nf_conn** %27, i64 %29
  %31 = load %struct.nf_conn*, %struct.nf_conn** %30, align 8
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.nf_conn* %31)
  %33 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %3, align 8
  %34 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %33, i32 0, i32 0
  %35 = load %struct.nf_conn**, %struct.nf_conn*** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.nf_conn*, %struct.nf_conn** %35, i64 %37
  %39 = load %struct.nf_conn*, %struct.nf_conn** %38, align 8
  %40 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %39, i32 0, i32 0
  %41 = call i32 @list_del_rcu(i32* %40)
  %42 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %3, align 8
  %43 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %42, i32 0, i32 0
  %44 = load %struct.nf_conn**, %struct.nf_conn*** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.nf_conn*, %struct.nf_conn** %44, i64 %46
  %48 = load %struct.nf_conn*, %struct.nf_conn** %47, align 8
  %49 = load i32, i32* @rcu, align 4
  %50 = call i32 @kfree_rcu(%struct.nf_conn* %48, i32 %49)
  %51 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %3, align 8
  %52 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %51, i32 0, i32 0
  %53 = load %struct.nf_conn**, %struct.nf_conn*** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.nf_conn*, %struct.nf_conn** %53, i64 %55
  store %struct.nf_conn* null, %struct.nf_conn** %56, align 8
  br label %57

57:                                               ; preds = %24, %15
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %11

61:                                               ; preds = %11
  %62 = call i32 @spin_unlock_bh(i32* @keymap_lock)
  ret void
}

declare dso_local %struct.nf_ct_pptp_master* @nfct_help_data(%struct.nf_conn*) #1

declare dso_local i32 @pr_debug(i8*, %struct.nf_conn*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.nf_conn*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
