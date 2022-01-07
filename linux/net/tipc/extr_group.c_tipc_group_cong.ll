; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_cong.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_cong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_group = type { i32*, i32 }
%struct.tipc_member = type { i32, i32, i32 }
%struct.sk_buff_head = type { i32 }

@MBR_JOINED = common dso_local global i32 0, align 4
@ADV_IDLE = common dso_local global i32 0, align 4
@MBR_ACTIVE = common dso_local global i32 0, align 4
@ADV_ACTIVE = common dso_local global i32 0, align 4
@MBR_PENDING = common dso_local global i32 0, align 4
@GRP_ADV_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_group_cong(%struct.tipc_group* %0, i32 %1, i32 %2, i32 %3, %struct.tipc_member** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tipc_group*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tipc_member**, align 8
  %12 = alloca %struct.sk_buff_head, align 4
  %13 = alloca %struct.tipc_member*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tipc_group* %0, %struct.tipc_group** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.tipc_member** %4, %struct.tipc_member*** %11, align 8
  %16 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.tipc_member* @tipc_group_find_dest(%struct.tipc_group* %16, i32 %17, i32 %18)
  store %struct.tipc_member* %19, %struct.tipc_member** %13, align 8
  %20 = load %struct.tipc_member*, %struct.tipc_member** %13, align 8
  %21 = call i32 @tipc_group_is_receiver(%struct.tipc_member* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = load %struct.tipc_member**, %struct.tipc_member*** %11, align 8
  store %struct.tipc_member* null, %struct.tipc_member** %24, align 8
  store i32 0, i32* %6, align 4
  br label %80

25:                                               ; preds = %5
  %26 = load %struct.tipc_member*, %struct.tipc_member** %13, align 8
  %27 = load %struct.tipc_member**, %struct.tipc_member*** %11, align 8
  store %struct.tipc_member* %26, %struct.tipc_member** %27, align 8
  %28 = load %struct.tipc_member*, %struct.tipc_member** %13, align 8
  %29 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %80

34:                                               ; preds = %25
  %35 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %36 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32 0, i32* %37, align 4
  %38 = load %struct.tipc_member*, %struct.tipc_member** %13, align 8
  %39 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  %41 = load %struct.tipc_member*, %struct.tipc_member** %13, align 8
  %42 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @MBR_JOINED, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %34
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @ADV_IDLE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  br label %80

52:                                               ; preds = %47, %34
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* @MBR_ACTIVE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @ADV_ACTIVE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 1, i32* %6, align 4
  br label %80

61:                                               ; preds = %56, %52
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @MBR_PENDING, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @ADV_IDLE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %6, align 4
  br label %80

70:                                               ; preds = %65, %61
  %71 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %12)
  %72 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %73 = load %struct.tipc_member*, %struct.tipc_member** %13, align 8
  %74 = load i32, i32* @GRP_ADV_MSG, align 4
  %75 = call i32 @tipc_group_proto_xmit(%struct.tipc_group* %72, %struct.tipc_member* %73, i32 %74, %struct.sk_buff_head* %12)
  %76 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %77 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @tipc_node_distr_xmit(i32 %78, %struct.sk_buff_head* %12)
  store i32 1, i32* %6, align 4
  br label %80

80:                                               ; preds = %70, %69, %60, %51, %33, %23
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.tipc_member* @tipc_group_find_dest(%struct.tipc_group*, i32, i32) #1

declare dso_local i32 @tipc_group_is_receiver(%struct.tipc_member*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @tipc_group_proto_xmit(%struct.tipc_group*, %struct.tipc_member*, i32, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_node_distr_xmit(i32, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
