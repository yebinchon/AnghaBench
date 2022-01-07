; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_process_sip_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_process_sip_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_nat_sip_hooks = type { i32 (%struct.sk_buff*, i32, i32, i8**, i32*)* }

@.str = private unnamed_addr constant [9 x i8] c"SIP/2.0 \00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@IPS_NAT_MASK = common dso_local global i32 0, align 4
@nf_nat_sip_hooks = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"cannot NAT SIP message\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i32, i8**, i32*)* @process_sip_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_sip_msg(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.nf_nat_sip_hooks*, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i8**, i8*** %11, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = call i64 @strncasecmp(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %6
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i8**, i8*** %11, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @process_sip_request(%struct.sk_buff* %21, i32 %22, i32 %23, i8** %24, i32* %25)
  store i32 %26, i32* %14, align 4
  br label %34

27:                                               ; preds = %6
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i8**, i8*** %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @process_sip_response(%struct.sk_buff* %28, i32 %29, i32 %30, i8** %31, i32* %32)
  store i32 %33, i32* %14, align 4
  br label %34

34:                                               ; preds = %27, %20
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @NF_ACCEPT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %34
  %39 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %40 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IPS_NAT_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %38
  %46 = load i32, i32* @nf_nat_sip_hooks, align 4
  %47 = call %struct.nf_nat_sip_hooks* @rcu_dereference(i32 %46)
  store %struct.nf_nat_sip_hooks* %47, %struct.nf_nat_sip_hooks** %13, align 8
  %48 = load %struct.nf_nat_sip_hooks*, %struct.nf_nat_sip_hooks** %13, align 8
  %49 = icmp ne %struct.nf_nat_sip_hooks* %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load %struct.nf_nat_sip_hooks*, %struct.nf_nat_sip_hooks** %13, align 8
  %52 = getelementptr inbounds %struct.nf_nat_sip_hooks, %struct.nf_nat_sip_hooks* %51, i32 0, i32 0
  %53 = load i32 (%struct.sk_buff*, i32, i32, i8**, i32*)*, i32 (%struct.sk_buff*, i32, i32, i8**, i32*)** %52, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i8**, i8*** %11, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 %53(%struct.sk_buff* %54, i32 %55, i32 %56, i8** %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %50
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %64 = call i32 @nf_ct_helper_log(%struct.sk_buff* %62, %struct.nf_conn* %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @NF_DROP, align 4
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %61, %50, %45
  br label %67

67:                                               ; preds = %66, %38, %34
  %68 = load i32, i32* %14, align 4
  ret i32 %68
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @process_sip_request(%struct.sk_buff*, i32, i32, i8**, i32*) #1

declare dso_local i32 @process_sip_response(%struct.sk_buff*, i32, i32, i8**, i32*) #1

declare dso_local %struct.nf_nat_sip_hooks* @rcu_dereference(i32) #1

declare dso_local i32 @nf_ct_helper_log(%struct.sk_buff*, %struct.nf_conn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
