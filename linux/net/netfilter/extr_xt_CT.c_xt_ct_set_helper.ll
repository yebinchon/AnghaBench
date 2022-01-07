; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CT.c_xt_ct_set_helper.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_CT.c_xt_ct_set_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.xt_tgchk_param = type { i32 }
%struct.nf_conntrack_helper = type { i32 }
%struct.nf_conn_help = type { %struct.nf_conntrack_helper* }

@.str = private unnamed_addr constant [61 x i8] c"You must specify a L4 protocol and not use inversions on it\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"No such helper \22%s\22\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, i8*, %struct.xt_tgchk_param*)* @xt_ct_set_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xt_ct_set_helper(%struct.nf_conn* %0, i8* %1, %struct.xt_tgchk_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xt_tgchk_param*, align 8
  %8 = alloca %struct.nf_conntrack_helper*, align 8
  %9 = alloca %struct.nf_conn_help*, align 8
  %10 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.xt_tgchk_param* %2, %struct.xt_tgchk_param** %7, align 8
  %11 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %7, align 8
  %12 = call i32 @xt_ct_find_proto(%struct.xt_tgchk_param* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %48

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %7, align 8
  %22 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.nf_conntrack_helper* @nf_conntrack_helper_try_module_get(i8* %20, i32 %23, i32 %24)
  store %struct.nf_conntrack_helper* %25, %struct.nf_conntrack_helper** %8, align 8
  %26 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %27 = icmp eq %struct.nf_conntrack_helper* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %48

33:                                               ; preds = %19
  %34 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn* %34, i32 %35)
  store %struct.nf_conn_help* %36, %struct.nf_conn_help** %9, align 8
  %37 = load %struct.nf_conn_help*, %struct.nf_conn_help** %9, align 8
  %38 = icmp eq %struct.nf_conn_help* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %41 = call i32 @nf_conntrack_helper_put(%struct.nf_conntrack_helper* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %48

44:                                               ; preds = %33
  %45 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %46 = load %struct.nf_conn_help*, %struct.nf_conn_help** %9, align 8
  %47 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %46, i32 0, i32 0
  store %struct.nf_conntrack_helper* %45, %struct.nf_conntrack_helper** %47, align 8
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %44, %39, %28, %15
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @xt_ct_find_proto(%struct.xt_tgchk_param*) #1

declare dso_local i32 @pr_info_ratelimited(i8*, ...) #1

declare dso_local %struct.nf_conntrack_helper* @nf_conntrack_helper_try_module_get(i8*, i32, i32) #1

declare dso_local %struct.nf_conn_help* @nf_ct_helper_ext_add(%struct.nf_conn*, i32) #1

declare dso_local i32 @nf_conntrack_helper_put(%struct.nf_conntrack_helper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
