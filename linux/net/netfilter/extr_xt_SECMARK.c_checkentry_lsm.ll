; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_SECMARK.c_checkentry_lsm.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_SECMARK.c_checkentry_lsm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_secmark_target_info = type { i8*, i64 }

@SECMARK_SECCTX_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid security context '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"unable to map security context '%s'\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"unable to obtain relabeling permission\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_secmark_target_info*)* @checkentry_lsm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkentry_lsm(%struct.xt_secmark_target_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_secmark_target_info*, align 8
  %4 = alloca i32, align 4
  store %struct.xt_secmark_target_info* %0, %struct.xt_secmark_target_info** %3, align 8
  %5 = load %struct.xt_secmark_target_info*, %struct.xt_secmark_target_info** %3, align 8
  %6 = getelementptr inbounds %struct.xt_secmark_target_info, %struct.xt_secmark_target_info* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load i32, i32* @SECMARK_SECCTX_MAX, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %7, i64 %10
  store i8 0, i8* %11, align 1
  %12 = load %struct.xt_secmark_target_info*, %struct.xt_secmark_target_info** %3, align 8
  %13 = getelementptr inbounds %struct.xt_secmark_target_info, %struct.xt_secmark_target_info* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.xt_secmark_target_info*, %struct.xt_secmark_target_info** %3, align 8
  %15 = getelementptr inbounds %struct.xt_secmark_target_info, %struct.xt_secmark_target_info* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.xt_secmark_target_info*, %struct.xt_secmark_target_info** %3, align 8
  %18 = getelementptr inbounds %struct.xt_secmark_target_info, %struct.xt_secmark_target_info* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = load %struct.xt_secmark_target_info*, %struct.xt_secmark_target_info** %3, align 8
  %22 = getelementptr inbounds %struct.xt_secmark_target_info, %struct.xt_secmark_target_info* %21, i32 0, i32 1
  %23 = call i32 @security_secctx_to_secid(i8* %16, i32 %20, i64* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.xt_secmark_target_info*, %struct.xt_secmark_target_info** %3, align 8
  %33 = getelementptr inbounds %struct.xt_secmark_target_info, %struct.xt_secmark_target_info* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %62

38:                                               ; preds = %1
  %39 = load %struct.xt_secmark_target_info*, %struct.xt_secmark_target_info** %3, align 8
  %40 = getelementptr inbounds %struct.xt_secmark_target_info, %struct.xt_secmark_target_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load %struct.xt_secmark_target_info*, %struct.xt_secmark_target_info** %3, align 8
  %45 = getelementptr inbounds %struct.xt_secmark_target_info, %struct.xt_secmark_target_info* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %62

50:                                               ; preds = %38
  %51 = load %struct.xt_secmark_target_info*, %struct.xt_secmark_target_info** %3, align 8
  %52 = getelementptr inbounds %struct.xt_secmark_target_info, %struct.xt_secmark_target_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @security_secmark_relabel_packet(i64 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = call i32 (i8*, ...) @pr_info_ratelimited(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %62

60:                                               ; preds = %50
  %61 = call i32 (...) @security_secmark_refcount_inc()
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %57, %43, %36
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @security_secctx_to_secid(i8*, i32, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pr_info_ratelimited(i8*, ...) #1

declare dso_local i32 @security_secmark_relabel_packet(i64) #1

declare dso_local i32 @security_secmark_refcount_inc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
