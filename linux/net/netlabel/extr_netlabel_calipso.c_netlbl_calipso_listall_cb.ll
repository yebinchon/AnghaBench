; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_calipso.c_netlbl_calipso_listall_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_calipso.c_netlbl_calipso_listall_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calipso_doi = type { i32, i32 }
%struct.netlbl_calipso_doiwalk_arg = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@netlbl_calipso_gnl_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@NLBL_CALIPSO_C_LISTALL = common dso_local global i32 0, align 4
@NLBL_CALIPSO_A_DOI = common dso_local global i32 0, align 4
@NLBL_CALIPSO_A_MTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.calipso_doi*, i8*)* @netlbl_calipso_listall_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_calipso_listall_cb(%struct.calipso_doi* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.calipso_doi*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlbl_calipso_doiwalk_arg*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__, align 4
  store %struct.calipso_doi* %0, %struct.calipso_doi** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.netlbl_calipso_doiwalk_arg*
  store %struct.netlbl_calipso_doiwalk_arg* %13, %struct.netlbl_calipso_doiwalk_arg** %7, align 8
  %14 = load %struct.netlbl_calipso_doiwalk_arg*, %struct.netlbl_calipso_doiwalk_arg** %7, align 8
  %15 = getelementptr inbounds %struct.netlbl_calipso_doiwalk_arg, %struct.netlbl_calipso_doiwalk_arg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.netlbl_calipso_doiwalk_arg*, %struct.netlbl_calipso_doiwalk_arg** %7, align 8
  %18 = getelementptr inbounds %struct.netlbl_calipso_doiwalk_arg, %struct.netlbl_calipso_doiwalk_arg* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @NETLINK_CB(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.netlbl_calipso_doiwalk_arg*, %struct.netlbl_calipso_doiwalk_arg** %7, align 8
  %27 = getelementptr inbounds %struct.netlbl_calipso_doiwalk_arg, %struct.netlbl_calipso_doiwalk_arg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NLM_F_MULTI, align 4
  %30 = load i32, i32* @NLBL_CALIPSO_C_LISTALL, align 4
  %31 = call i8* @genlmsg_put(i32 %16, i32 %25, i32 %28, i32* @netlbl_calipso_gnl_family, i32 %29, i32 %30)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  br label %65

35:                                               ; preds = %2
  %36 = load %struct.netlbl_calipso_doiwalk_arg*, %struct.netlbl_calipso_doiwalk_arg** %7, align 8
  %37 = getelementptr inbounds %struct.netlbl_calipso_doiwalk_arg, %struct.netlbl_calipso_doiwalk_arg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @NLBL_CALIPSO_A_DOI, align 4
  %40 = load %struct.calipso_doi*, %struct.calipso_doi** %4, align 8
  %41 = getelementptr inbounds %struct.calipso_doi, %struct.calipso_doi* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @nla_put_u32(i32 %38, i32 %39, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %65

47:                                               ; preds = %35
  %48 = load %struct.netlbl_calipso_doiwalk_arg*, %struct.netlbl_calipso_doiwalk_arg** %7, align 8
  %49 = getelementptr inbounds %struct.netlbl_calipso_doiwalk_arg, %struct.netlbl_calipso_doiwalk_arg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @NLBL_CALIPSO_A_MTYPE, align 4
  %52 = load %struct.calipso_doi*, %struct.calipso_doi** %4, align 8
  %53 = getelementptr inbounds %struct.calipso_doi, %struct.calipso_doi* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nla_put_u32(i32 %50, i32 %51, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %65

59:                                               ; preds = %47
  %60 = load %struct.netlbl_calipso_doiwalk_arg*, %struct.netlbl_calipso_doiwalk_arg** %7, align 8
  %61 = getelementptr inbounds %struct.netlbl_calipso_doiwalk_arg, %struct.netlbl_calipso_doiwalk_arg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @genlmsg_end(i32 %62, i8* %63)
  store i32 0, i32* %3, align 4
  br label %72

65:                                               ; preds = %58, %46, %34
  %66 = load %struct.netlbl_calipso_doiwalk_arg*, %struct.netlbl_calipso_doiwalk_arg** %7, align 8
  %67 = getelementptr inbounds %struct.netlbl_calipso_doiwalk_arg, %struct.netlbl_calipso_doiwalk_arg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @genlmsg_cancel(i32 %68, i8* %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %65, %59
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i8* @genlmsg_put(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @nla_put_u32(i32, i32, i32) #1

declare dso_local i32 @genlmsg_end(i32, i8*) #1

declare dso_local i32 @genlmsg_cancel(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
