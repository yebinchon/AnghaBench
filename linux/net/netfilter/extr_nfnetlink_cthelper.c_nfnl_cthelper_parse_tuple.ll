; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_parse_tuple.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cthelper.c_nfnl_cthelper_parse_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nlattr = type { i32 }

@NFCTH_TUPLE_MAX = common dso_local global i32 0, align 4
@nfnl_cthelper_tuple_pol = common dso_local global i32 0, align 4
@NFCTH_TUPLE_L3PROTONUM = common dso_local global i64 0, align 8
@NFCTH_TUPLE_L4PROTONUM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_tuple*, %struct.nlattr*)* @nfnl_cthelper_parse_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfnl_cthelper_parse_tuple(%struct.nf_conntrack_tuple* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conntrack_tuple*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %10 = load i32, i32* @NFCTH_TUPLE_MAX, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca %struct.nlattr*, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @NFCTH_TUPLE_MAX, align 4
  %16 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %17 = load i32, i32* @nfnl_cthelper_tuple_pol, align 4
  %18 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %14, i32 %15, %struct.nlattr* %16, i32 %17, i32* null)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %54

23:                                               ; preds = %2
  %24 = load i64, i64* @NFCTH_TUPLE_L3PROTONUM, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i64, i64* @NFCTH_TUPLE_L4PROTONUM, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %54

36:                                               ; preds = %28
  %37 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %38 = call i32 @memset(%struct.nf_conntrack_tuple* %37, i32 0, i32 8)
  %39 = load i64, i64* @NFCTH_TUPLE_L3PROTONUM, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = call i32 @nla_get_be16(%struct.nlattr* %41)
  %43 = call i32 @ntohs(i32 %42)
  %44 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %45 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load i64, i64* @NFCTH_TUPLE_L4PROTONUM, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = call i32 @nla_get_u8(%struct.nlattr* %49)
  %51 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %52 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %36, %33, %21
  %55 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i32 @memset(%struct.nf_conntrack_tuple*, i32, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
