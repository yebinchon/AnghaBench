; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_nf_nat_inet_fn.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_nat_core.c_nf_nat_inet_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i32, i32 }
%struct.nf_conn = type { i32 }
%struct.nf_conn_nat = type { i32 }
%struct.nf_nat_lookup_hook_priv = type { i32 }
%struct.nf_hook_entries = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.sk_buff*, %struct.nf_hook_state*)*, i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Already setup manip %s for ct %p (status bits 0x%lx)\0A\00", align 1
@NF_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"SRC\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DST\00", align 1
@IP_CT_ESTABLISHED = common dso_local global i32 0, align 4
@IP_CT_ESTABLISHED_REPLY = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_inet_fn(i8* %0, %struct.sk_buff* %1, %struct.nf_hook_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nf_hook_state*, align 8
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conn_nat*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nf_nat_lookup_hook_priv*, align 8
  %13 = alloca %struct.nf_hook_entries*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.nf_hook_state* %2, %struct.nf_hook_state** %7, align 8
  %16 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %17 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @HOOK2MANIP(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %20, i32* %9)
  store %struct.nf_conn* %21, %struct.nf_conn** %8, align 8
  %22 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %23 = icmp ne %struct.nf_conn* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %25, i32* %4, align 4
  br label %163

26:                                               ; preds = %3
  %27 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %28 = call %struct.nf_conn_nat* @nfct_nat(%struct.nf_conn* %27)
  store %struct.nf_conn_nat* %28, %struct.nf_conn_nat** %10, align 8
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %124 [
    i32 129, label %30
    i32 128, label %30
    i32 130, label %30
  ]

30:                                               ; preds = %26, %26, %26
  %31 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @nf_nat_initialized(%struct.nf_conn* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %100, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %5, align 8
  %37 = bitcast i8* %36 to %struct.nf_nat_lookup_hook_priv*
  store %struct.nf_nat_lookup_hook_priv* %37, %struct.nf_nat_lookup_hook_priv** %12, align 8
  %38 = load %struct.nf_nat_lookup_hook_priv*, %struct.nf_nat_lookup_hook_priv** %12, align 8
  %39 = getelementptr inbounds %struct.nf_nat_lookup_hook_priv, %struct.nf_nat_lookup_hook_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.nf_hook_entries* @rcu_dereference(i32 %40)
  store %struct.nf_hook_entries* %41, %struct.nf_hook_entries** %13, align 8
  %42 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %13, align 8
  %43 = icmp ne %struct.nf_hook_entries* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %88

45:                                               ; preds = %35
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %84, %45
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %13, align 8
  %49 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %87

52:                                               ; preds = %46
  %53 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %13, align 8
  %54 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (i32, %struct.sk_buff*, %struct.nf_hook_state*)*, i32 (i32, %struct.sk_buff*, %struct.nf_hook_state*)** %59, align 8
  %61 = load %struct.nf_hook_entries*, %struct.nf_hook_entries** %13, align 8
  %62 = getelementptr inbounds %struct.nf_hook_entries, %struct.nf_hook_entries* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %71 = call i32 %60(i32 %68, %struct.sk_buff* %69, %struct.nf_hook_state* %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @NF_ACCEPT, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %52
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %4, align 4
  br label %163

77:                                               ; preds = %52
  %78 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @nf_nat_initialized(%struct.nf_conn* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %149

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  br label %46

87:                                               ; preds = %46
  br label %88

88:                                               ; preds = %87, %44
  %89 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %90 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %91 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @nf_nat_alloc_null_binding(%struct.nf_conn* %89, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @NF_ACCEPT, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %4, align 4
  br label %163

99:                                               ; preds = %88
  br label %123

100:                                              ; preds = %30
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @NF_NAT_MANIP_SRC, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %106 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %107 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %108 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %105, %struct.nf_conn* %106, i32 %109)
  %111 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %112 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %10, align 8
  %116 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %117 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @nf_nat_oif_changed(i32 %113, i32 %114, %struct.nf_conn_nat* %115, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %100
  br label %157

122:                                              ; preds = %100
  br label %123

123:                                              ; preds = %122, %99
  br label %148

124:                                              ; preds = %26
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @IP_CT_ESTABLISHED, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @IP_CT_ESTABLISHED_REPLY, align 4
  %131 = icmp ne i32 %129, %130
  br label %132

132:                                              ; preds = %128, %124
  %133 = phi i1 [ false, %124 ], [ %131, %128 ]
  %134 = zext i1 %133 to i32
  %135 = call i32 @WARN_ON(i32 %134)
  %136 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %137 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %10, align 8
  %141 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %142 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @nf_nat_oif_changed(i32 %138, i32 %139, %struct.nf_conn_nat* %140, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %132
  br label %157

147:                                              ; preds = %132
  br label %148

148:                                              ; preds = %147, %123
  br label %149

149:                                              ; preds = %148, %82
  %150 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.nf_hook_state*, %struct.nf_hook_state** %7, align 8
  %153 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %156 = call i32 @nf_nat_packet(%struct.nf_conn* %150, i32 %151, i32 %154, %struct.sk_buff* %155)
  store i32 %156, i32* %4, align 4
  br label %163

157:                                              ; preds = %146, %121
  %158 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %161 = call i32 @nf_ct_kill_acct(%struct.nf_conn* %158, i32 %159, %struct.sk_buff* %160)
  %162 = load i32, i32* @NF_DROP, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %157, %149, %97, %75, %24
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @HOOK2MANIP(i32) #1

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_conn_nat* @nfct_nat(%struct.nf_conn*) #1

declare dso_local i32 @nf_nat_initialized(%struct.nf_conn*, i32) #1

declare dso_local %struct.nf_hook_entries* @rcu_dereference(i32) #1

declare dso_local i32 @nf_nat_alloc_null_binding(%struct.nf_conn*, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, %struct.nf_conn*, i32) #1

declare dso_local i32 @nf_nat_oif_changed(i32, i32, %struct.nf_conn_nat*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nf_nat_packet(%struct.nf_conn*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @nf_ct_kill_acct(%struct.nf_conn*, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
