; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_nf_nat_setup_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_nf_nat_setup_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_nat_range2 = type { i32 }
%struct.net = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@NF_NAT_MANIP_DST = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@IPS_SRC_NAT = common dso_local global i32 0, align 4
@IPS_DST_NAT = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@nf_nat_locks = common dso_local global i32* null, align 8
@CONNTRACK_LOCKS = common dso_local global i32 0, align 4
@nf_nat_bysource = common dso_local global i32* null, align 8
@IPS_DST_NAT_DONE = common dso_local global i32 0, align 4
@IPS_SRC_NAT_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_setup_info(%struct.nf_conn* %0, %struct.nf_nat_range2* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nf_nat_range2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.nf_conntrack_tuple, align 4
  %10 = alloca %struct.nf_conntrack_tuple, align 4
  %11 = alloca %struct.nf_conntrack_tuple, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %5, align 8
  store %struct.nf_nat_range2* %1, %struct.nf_nat_range2** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %15 = call %struct.net* @nf_ct_net(%struct.nf_conn* %14)
  store %struct.net* %15, %struct.net** %8, align 8
  %16 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %17 = call i64 @nf_ct_is_confirmed(%struct.nf_conn* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %20, i32* %4, align 4
  br label %137

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @NF_NAT_MANIP_SRC, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @NF_NAT_MANIP_DST, align 4
  %28 = icmp ne i32 %26, %27
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i1 [ false, %21 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @nf_nat_initialized(%struct.nf_conn* %33, i32 %34)
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @NF_DROP, align 4
  store i32 %39, i32* %4, align 4
  br label %137

40:                                               ; preds = %29
  %41 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %42 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @nf_ct_invert_tuple(%struct.nf_conntrack_tuple* %9, %struct.nf_conntrack_tuple* %46)
  %48 = load %struct.nf_nat_range2*, %struct.nf_nat_range2** %6, align 8
  %49 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @get_unique_tuple(%struct.nf_conntrack_tuple* %10, %struct.nf_conntrack_tuple* %9, %struct.nf_nat_range2* %48, %struct.nf_conn* %49, i32 %50)
  %52 = call i32 @nf_ct_tuple_equal(%struct.nf_conntrack_tuple* %10, %struct.nf_conntrack_tuple* %9)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %89, label %54

54:                                               ; preds = %40
  %55 = call i32 @nf_ct_invert_tuple(%struct.nf_conntrack_tuple* %11, %struct.nf_conntrack_tuple* %10)
  %56 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %57 = call i32 @nf_conntrack_alter_reply(%struct.nf_conn* %56, %struct.nf_conntrack_tuple* %11)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @NF_NAT_MANIP_SRC, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i32, i32* @IPS_SRC_NAT, align 4
  %63 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %64 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %73

67:                                               ; preds = %54
  %68 = load i32, i32* @IPS_DST_NAT, align 4
  %69 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %70 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %61
  %74 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %75 = call i64 @nfct_help(%struct.nf_conn* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %79 = call i32 @nfct_seqadj(%struct.nf_conn* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  %82 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %83 = call i32 @nfct_seqadj_ext_add(%struct.nf_conn* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* @NF_DROP, align 4
  store i32 %86, i32* %4, align 4
  br label %137

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %77, %73
  br label %89

89:                                               ; preds = %88, %40
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @NF_NAT_MANIP_SRC, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %89
  %94 = load %struct.net*, %struct.net** %8, align 8
  %95 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %96 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = call i32 @hash_by_src(%struct.net* %94, %struct.nf_conntrack_tuple* %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32*, i32** @nf_nat_locks, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @CONNTRACK_LOCKS, align 4
  %105 = urem i32 %103, %104
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  store i32* %107, i32** %13, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @spin_lock_bh(i32* %108)
  %110 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %111 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %110, i32 0, i32 1
  %112 = load i32*, i32** @nf_nat_bysource, align 8
  %113 = load i32, i32* %12, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = call i32 @hlist_add_head_rcu(i32* %111, i32* %115)
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @spin_unlock_bh(i32* %117)
  br label %119

119:                                              ; preds = %93, %89
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @NF_NAT_MANIP_DST, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i32, i32* @IPS_DST_NAT_DONE, align 4
  %125 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %126 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %135

129:                                              ; preds = %119
  %130 = load i32, i32* @IPS_SRC_NAT_DONE, align 4
  %131 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %132 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %129, %123
  %136 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %135, %85, %38, %19
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i64 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @nf_nat_initialized(%struct.nf_conn*, i32) #1

declare dso_local i32 @nf_ct_invert_tuple(%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @get_unique_tuple(%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*, %struct.nf_nat_range2*, %struct.nf_conn*, i32) #1

declare dso_local i32 @nf_ct_tuple_equal(%struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @nf_conntrack_alter_reply(%struct.nf_conn*, %struct.nf_conntrack_tuple*) #1

declare dso_local i64 @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @nfct_seqadj(%struct.nf_conn*) #1

declare dso_local i32 @nfct_seqadj_ext_add(%struct.nf_conn*) #1

declare dso_local i32 @hash_by_src(%struct.net*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
