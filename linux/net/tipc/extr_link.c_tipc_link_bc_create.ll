; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_bc_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_tipc_link_bc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_link = type { i32, %struct.tipc_link*, i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MAX_BEARERS = common dso_local global i32 0, align 4
@tipc_bclink_name = common dso_local global i32 0, align 4
@TIPC_DUMP_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bclink created!\00", align 1
@LINK_RESET = common dso_local global i32 0, align 4
@LINK_ESTABLISHED = common dso_local global i32 0, align 4
@TIPC_BCAST_RCAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_link_bc_create(%struct.net* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.sk_buff_head* %6, %struct.sk_buff_head* %7, %struct.tipc_link* %8, %struct.tipc_link** %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.net*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sk_buff_head*, align 8
  %19 = alloca %struct.sk_buff_head*, align 8
  %20 = alloca %struct.tipc_link*, align 8
  %21 = alloca %struct.tipc_link**, align 8
  %22 = alloca %struct.tipc_link*, align 8
  store %struct.net* %0, %struct.net** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store %struct.sk_buff_head* %6, %struct.sk_buff_head** %18, align 8
  store %struct.sk_buff_head* %7, %struct.sk_buff_head** %19, align 8
  store %struct.tipc_link* %8, %struct.tipc_link** %20, align 8
  store %struct.tipc_link** %9, %struct.tipc_link*** %21, align 8
  %23 = load %struct.net*, %struct.net** %12, align 8
  %24 = load i32, i32* @MAX_BEARERS, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %17, align 4
  %30 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %31 = load %struct.sk_buff_head*, %struct.sk_buff_head** %18, align 8
  %32 = load %struct.sk_buff_head*, %struct.sk_buff_head** %19, align 8
  %33 = load %struct.tipc_link**, %struct.tipc_link*** %21, align 8
  %34 = call i32 @tipc_link_create(%struct.net* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %24, i32 0, i8 signext 90, i32 %25, i32 0, i32 %26, i32 0, i32 %27, i32 %28, i32* null, i32 %29, %struct.tipc_link* %30, i32* null, %struct.sk_buff_head* %31, %struct.sk_buff_head* %32, %struct.tipc_link** %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %10
  store i32 0, i32* %11, align 4
  br label %78

37:                                               ; preds = %10
  %38 = load %struct.tipc_link**, %struct.tipc_link*** %21, align 8
  %39 = load %struct.tipc_link*, %struct.tipc_link** %38, align 8
  store %struct.tipc_link* %39, %struct.tipc_link** %22, align 8
  %40 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %41 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @tipc_bclink_name, align 4
  %44 = call i32 @strcpy(i32 %42, i32 %43)
  %45 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %46 = load i32, i32* @TIPC_DUMP_ALL, align 4
  %47 = call i32 @trace_tipc_link_reset(%struct.tipc_link* %45, i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %49 = call i32 @tipc_link_reset(%struct.tipc_link* %48)
  %50 = load i32, i32* @LINK_RESET, align 4
  %51 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %52 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %54 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %56 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %57 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %56, i32 0, i32 1
  store %struct.tipc_link* %55, %struct.tipc_link** %57, align 8
  %58 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %59 = call i64 @link_is_bc_sndlink(%struct.tipc_link* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %37
  %62 = load i32, i32* @LINK_ESTABLISHED, align 4
  %63 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %64 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %37
  %66 = load %struct.tipc_link*, %struct.tipc_link** %22, align 8
  %67 = call i64 @link_is_bc_rcvlink(%struct.tipc_link* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* @TIPC_BCAST_RCAST, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load %struct.net*, %struct.net** %12, align 8
  %76 = call i32 @tipc_bcast_disable_rcast(%struct.net* %75)
  br label %77

77:                                               ; preds = %74, %69, %65
  store i32 1, i32* %11, align 4
  br label %78

78:                                               ; preds = %77, %36
  %79 = load i32, i32* %11, align 4
  ret i32 %79
}

declare dso_local i32 @tipc_link_create(%struct.net*, i8*, i32, i32, i8 signext, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.tipc_link*, i32*, %struct.sk_buff_head*, %struct.sk_buff_head*, %struct.tipc_link**) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @trace_tipc_link_reset(%struct.tipc_link*, i32, i8*) #1

declare dso_local i32 @tipc_link_reset(%struct.tipc_link*) #1

declare dso_local i64 @link_is_bc_sndlink(%struct.tipc_link*) #1

declare dso_local i64 @link_is_bc_rcvlink(%struct.tipc_link*) #1

declare dso_local i32 @tipc_bcast_disable_rcast(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
