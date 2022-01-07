; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_change_seq_adj.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_change_seq_adj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_ct_seqadj = type { i8*, i8*, i8* }
%struct.nlattr = type { i32 }

@CTA_SEQADJ_MAX = common dso_local global i32 0, align 4
@seqadj_policy = common dso_local global i32 0, align 4
@CTA_SEQADJ_CORRECTION_POS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CTA_SEQADJ_OFFSET_BEFORE = common dso_local global i64 0, align 8
@CTA_SEQADJ_OFFSET_AFTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_ct_seqadj*, %struct.nlattr*)* @change_seq_adj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_seq_adj(%struct.nf_ct_seqadj* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_ct_seqadj*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.nf_ct_seqadj* %0, %struct.nf_ct_seqadj** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %10 = load i32, i32* @CTA_SEQADJ_MAX, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca %struct.nlattr*, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @CTA_SEQADJ_MAX, align 4
  %16 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %17 = load i32, i32* @seqadj_policy, align 4
  %18 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %14, i32 %15, %struct.nlattr* %16, i32 %17, i32* null)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %69

23:                                               ; preds = %2
  %24 = load i64, i64* @CTA_SEQADJ_CORRECTION_POS, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %69

31:                                               ; preds = %23
  %32 = load i64, i64* @CTA_SEQADJ_CORRECTION_POS, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i32 @nla_get_be32(%struct.nlattr* %34)
  %36 = call i8* @ntohl(i32 %35)
  %37 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %4, align 8
  %38 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i64, i64* @CTA_SEQADJ_OFFSET_BEFORE, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %69

46:                                               ; preds = %31
  %47 = load i64, i64* @CTA_SEQADJ_OFFSET_BEFORE, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = call i32 @nla_get_be32(%struct.nlattr* %49)
  %51 = call i8* @ntohl(i32 %50)
  %52 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %4, align 8
  %53 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i64, i64* @CTA_SEQADJ_OFFSET_AFTER, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = icmp ne %struct.nlattr* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %46
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %69

61:                                               ; preds = %46
  %62 = load i64, i64* @CTA_SEQADJ_OFFSET_AFTER, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call i32 @nla_get_be32(%struct.nlattr* %64)
  %66 = call i8* @ntohl(i32 %65)
  %67 = load %struct.nf_ct_seqadj*, %struct.nf_ct_seqadj** %4, align 8
  %68 = getelementptr inbounds %struct.nf_ct_seqadj, %struct.nf_ct_seqadj* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %69

69:                                               ; preds = %61, %58, %43, %28, %21
  %70 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i8* @ntohl(i32) #2

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
