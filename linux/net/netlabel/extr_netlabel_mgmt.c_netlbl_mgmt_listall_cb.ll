; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_mgmt.c_netlbl_mgmt_listall_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_mgmt.c_netlbl_mgmt_listall_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_dom_map = type { i32 }
%struct.netlbl_domhsh_walk_arg = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@netlbl_mgmt_gnl_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@NLBL_MGMT_C_LISTALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlbl_dom_map*, i8*)* @netlbl_mgmt_listall_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_mgmt_listall_cb(%struct.netlbl_dom_map* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netlbl_dom_map*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlbl_domhsh_walk_arg*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__, align 4
  store %struct.netlbl_dom_map* %0, %struct.netlbl_dom_map** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.netlbl_domhsh_walk_arg*
  store %struct.netlbl_domhsh_walk_arg* %13, %struct.netlbl_domhsh_walk_arg** %7, align 8
  %14 = load %struct.netlbl_domhsh_walk_arg*, %struct.netlbl_domhsh_walk_arg** %7, align 8
  %15 = getelementptr inbounds %struct.netlbl_domhsh_walk_arg, %struct.netlbl_domhsh_walk_arg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.netlbl_domhsh_walk_arg*, %struct.netlbl_domhsh_walk_arg** %7, align 8
  %18 = getelementptr inbounds %struct.netlbl_domhsh_walk_arg, %struct.netlbl_domhsh_walk_arg* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @NETLINK_CB(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.netlbl_domhsh_walk_arg*, %struct.netlbl_domhsh_walk_arg** %7, align 8
  %27 = getelementptr inbounds %struct.netlbl_domhsh_walk_arg, %struct.netlbl_domhsh_walk_arg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NLM_F_MULTI, align 4
  %30 = load i32, i32* @NLBL_MGMT_C_LISTALL, align 4
  %31 = call i8* @genlmsg_put(i32 %16, i32 %25, i32 %28, i32* @netlbl_mgmt_gnl_family, i32 %29, i32 %30)
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  br label %54

35:                                               ; preds = %2
  %36 = load %struct.netlbl_domhsh_walk_arg*, %struct.netlbl_domhsh_walk_arg** %7, align 8
  %37 = getelementptr inbounds %struct.netlbl_domhsh_walk_arg, %struct.netlbl_domhsh_walk_arg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.netlbl_dom_map*, %struct.netlbl_dom_map** %4, align 8
  %40 = call i32 @netlbl_mgmt_listentry(i32 %38, %struct.netlbl_dom_map* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %54

44:                                               ; preds = %35
  %45 = load %struct.netlbl_domhsh_walk_arg*, %struct.netlbl_domhsh_walk_arg** %7, align 8
  %46 = getelementptr inbounds %struct.netlbl_domhsh_walk_arg, %struct.netlbl_domhsh_walk_arg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.netlbl_domhsh_walk_arg*, %struct.netlbl_domhsh_walk_arg** %7, align 8
  %50 = getelementptr inbounds %struct.netlbl_domhsh_walk_arg, %struct.netlbl_domhsh_walk_arg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @genlmsg_end(i32 %51, i8* %52)
  store i32 0, i32* %3, align 4
  br label %61

54:                                               ; preds = %43, %34
  %55 = load %struct.netlbl_domhsh_walk_arg*, %struct.netlbl_domhsh_walk_arg** %7, align 8
  %56 = getelementptr inbounds %struct.netlbl_domhsh_walk_arg, %struct.netlbl_domhsh_walk_arg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @genlmsg_cancel(i32 %57, i8* %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %54, %44
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i8* @genlmsg_put(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @netlbl_mgmt_listentry(i32, %struct.netlbl_dom_map*) #1

declare dso_local i32 @genlmsg_end(i32, i8*) #1

declare dso_local i32 @genlmsg_cancel(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
