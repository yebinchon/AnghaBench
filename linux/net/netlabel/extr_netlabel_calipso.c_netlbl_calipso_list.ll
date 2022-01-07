; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_calipso.c_netlbl_calipso_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_calipso.c_netlbl_calipso_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32* }
%struct.calipso_doi = type { i32 }

@NLBL_CALIPSO_A_DOI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@netlbl_calipso_gnl_family = common dso_local global i32 0, align 4
@NLBL_CALIPSO_C_LIST = common dso_local global i32 0, align 4
@NLBL_CALIPSO_A_MTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @netlbl_calipso_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_calipso_list(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.calipso_doi*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @NLBL_CALIPSO_A_DOI, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %77

21:                                               ; preds = %2
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @NLBL_CALIPSO_A_DOI, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nla_get_u32(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.calipso_doi* @calipso_doi_getdef(i32 %29)
  store %struct.calipso_doi* %30, %struct.calipso_doi** %10, align 8
  %31 = load %struct.calipso_doi*, %struct.calipso_doi** %10, align 8
  %32 = icmp ne %struct.calipso_doi* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %21
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %77

36:                                               ; preds = %21
  %37 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.sk_buff* @nlmsg_new(i32 %37, i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %7, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %74

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = load i32, i32* @NLBL_CALIPSO_C_LIST, align 4
  %49 = call i8* @genlmsg_put_reply(%struct.sk_buff* %46, %struct.genl_info* %47, i32* @netlbl_calipso_gnl_family, i32 0, i32 %48)
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %74

55:                                               ; preds = %45
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = load i32, i32* @NLBL_CALIPSO_A_MTYPE, align 4
  %58 = load %struct.calipso_doi*, %struct.calipso_doi** %10, align 8
  %59 = getelementptr inbounds %struct.calipso_doi, %struct.calipso_doi* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @nla_put_u32(%struct.sk_buff* %56, i32 %57, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %74

65:                                               ; preds = %55
  %66 = load %struct.calipso_doi*, %struct.calipso_doi** %10, align 8
  %67 = call i32 @calipso_doi_putdef(%struct.calipso_doi* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @genlmsg_end(%struct.sk_buff* %68, i8* %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %73 = call i32 @genlmsg_reply(%struct.sk_buff* %71, %struct.genl_info* %72)
  store i32 %73, i32* %3, align 4
  br label %81

74:                                               ; preds = %64, %52, %42
  %75 = load %struct.calipso_doi*, %struct.calipso_doi** %10, align 8
  %76 = call i32 @calipso_doi_putdef(%struct.calipso_doi* %75)
  br label %77

77:                                               ; preds = %74, %33, %18
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = call i32 @kfree_skb(%struct.sk_buff* %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %65
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local %struct.calipso_doi* @calipso_doi_getdef(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put_reply(%struct.sk_buff*, %struct.genl_info*, i32*, i32, i32) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @calipso_doi_putdef(%struct.calipso_doi*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
