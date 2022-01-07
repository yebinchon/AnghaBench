; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_entry_ctx_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_entry_ctx_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_dpipe_dump_ctx = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.devlink**, i32, i32 }
%struct.devlink = type { i32 }

@devlink_nl_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@DEVLINK_ATTR_DPIPE_ENTRIES = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_dpipe_entry_ctx_prepare(%struct.devlink_dpipe_dump_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.devlink_dpipe_dump_ctx*, align 8
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca i32, align 4
  store %struct.devlink_dpipe_dump_ctx* %0, %struct.devlink_dpipe_dump_ctx** %3, align 8
  %6 = load %struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_dump_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %6, i32 0, i32 0
  %8 = load %struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_dump_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call i32 @devlink_dpipe_send_and_alloc_skb(i32* %7, %struct.TYPE_2__* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %78

16:                                               ; preds = %1
  %17 = load %struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_dump_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_dump_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_dump_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NLM_F_MULTI, align 4
  %31 = load %struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_dump_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @genlmsg_put(i32 %19, i32 %24, i32 %29, i32* @devlink_nl_family, i32 %30, i32 %33)
  %35 = load %struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_dump_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_dump_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %16
  br label %71

42:                                               ; preds = %16
  %43 = load %struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_dump_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.devlink**, %struct.devlink*** %46, align 8
  %48 = getelementptr inbounds %struct.devlink*, %struct.devlink** %47, i64 0
  %49 = load %struct.devlink*, %struct.devlink** %48, align 8
  store %struct.devlink* %49, %struct.devlink** %4, align 8
  %50 = load %struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_dump_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.devlink*, %struct.devlink** %4, align 8
  %54 = call i64 @devlink_nl_put_handle(i32 %52, %struct.devlink* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %71

57:                                               ; preds = %42
  %58 = load %struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_dump_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @DEVLINK_ATTR_DPIPE_ENTRIES, align 4
  %62 = call i32 @nla_nest_start_noflag(i32 %60, i32 %61)
  %63 = load %struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_dump_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_dump_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %57
  br label %71

70:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %78

71:                                               ; preds = %69, %56, %41
  %72 = load %struct.devlink_dpipe_dump_ctx*, %struct.devlink_dpipe_dump_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.devlink_dpipe_dump_ctx, %struct.devlink_dpipe_dump_ctx* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @nlmsg_free(i32 %74)
  %76 = load i32, i32* @EMSGSIZE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %71, %70, %14
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @devlink_dpipe_send_and_alloc_skb(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @genlmsg_put(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @devlink_nl_put_handle(i32, %struct.devlink*) #1

declare dso_local i32 @nla_nest_start_noflag(i32, i32) #1

declare dso_local i32 @nlmsg_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
