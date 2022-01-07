; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_pptp.c_pptp_destroy_siblings.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_pptp.c_pptp_destroy_siblings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.net = type { i32 }
%struct.nf_ct_pptp_master = type { i32, i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@IPPROTO_GRE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"failed to timeout original pns->pac ct/exp\0A\00", align 1
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to timeout reply pac->pns ct/exp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conn*)* @pptp_destroy_siblings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pptp_destroy_siblings(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.nf_ct_pptp_master*, align 8
  %5 = alloca %struct.nf_conntrack_tuple, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  %6 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %7 = call %struct.net* @nf_ct_net(%struct.nf_conn* %6)
  store %struct.net* %7, %struct.net** %3, align 8
  %8 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %9 = call %struct.nf_ct_pptp_master* @nfct_help_data(%struct.nf_conn* %8)
  store %struct.nf_ct_pptp_master* %9, %struct.nf_ct_pptp_master** %4, align 8
  %10 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %11 = call i32 @nf_ct_gre_keymap_destroy(%struct.nf_conn* %10)
  %12 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %13 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = call i32 @memcpy(%struct.nf_conntrack_tuple* %5, i32* %17, i32 24)
  %19 = load i8*, i8** @IPPROTO_GRE, align 8
  %20 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %5, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %4, align 8
  %23 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %5, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 8
  %29 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %4, align 8
  %30 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %5, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  %36 = load %struct.net*, %struct.net** %3, align 8
  %37 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %38 = call i32 @destroy_sibling_or_exp(%struct.net* %36, %struct.nf_conn* %37, %struct.nf_conntrack_tuple* %5)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %1
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %1
  %43 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %44 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = call i32 @memcpy(%struct.nf_conntrack_tuple* %5, i32* %48, i32 24)
  %50 = load i8*, i8** @IPPROTO_GRE, align 8
  %51 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %5, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %4, align 8
  %54 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %5, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 8
  %60 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %4, align 8
  %61 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %5, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  %67 = load %struct.net*, %struct.net** %3, align 8
  %68 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %69 = call i32 @destroy_sibling_or_exp(%struct.net* %67, %struct.nf_conn* %68, %struct.nf_conntrack_tuple* %5)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %42
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %42
  ret void
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local %struct.nf_ct_pptp_master* @nfct_help_data(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_gre_keymap_destroy(%struct.nf_conn*) #1

declare dso_local i32 @memcpy(%struct.nf_conntrack_tuple*, i32*, i32) #1

declare dso_local i32 @destroy_sibling_or_exp(%struct.net*, %struct.nf_conn*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
