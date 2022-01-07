; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_member_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_member_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_group = type { i64, i32, %struct.net* }
%struct.net = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.tipc_event = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.tipc_member = type { i32, i32, i32, i32, i64 }

@MBR_PUBLISHED = common dso_local global i32 0, align 4
@GRP_JOIN_MSG = common dso_local global i32 0, align 4
@MBR_JOINING = common dso_local global i32 0, align 4
@MBR_JOINED = common dso_local global i32 0, align 4
@MBR_LEAVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_group_member_evt(%struct.tipc_group* %0, i32* %1, i32* %2, %struct.tipc_msg* %3, %struct.sk_buff_head* %4, %struct.sk_buff_head* %5) #0 {
  %7 = alloca %struct.tipc_group*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.tipc_msg*, align 8
  %11 = alloca %struct.sk_buff_head*, align 8
  %12 = alloca %struct.sk_buff_head*, align 8
  %13 = alloca %struct.tipc_event*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.tipc_member*, align 8
  %19 = alloca %struct.net*, align 8
  %20 = alloca i64, align 8
  store %struct.tipc_group* %0, %struct.tipc_group** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.tipc_msg* %3, %struct.tipc_msg** %10, align 8
  store %struct.sk_buff_head* %4, %struct.sk_buff_head** %11, align 8
  store %struct.sk_buff_head* %5, %struct.sk_buff_head** %12, align 8
  %21 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %22 = call i64 @msg_data(%struct.tipc_msg* %21)
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.tipc_event*
  store %struct.tipc_event* %24, %struct.tipc_event** %13, align 8
  %25 = load %struct.tipc_event*, %struct.tipc_event** %13, align 8
  %26 = getelementptr inbounds %struct.tipc_event, %struct.tipc_event* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %14, align 8
  %28 = load %struct.tipc_event*, %struct.tipc_event** %13, align 8
  %29 = getelementptr inbounds %struct.tipc_event, %struct.tipc_event* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %15, align 8
  %32 = load %struct.tipc_event*, %struct.tipc_event** %13, align 8
  %33 = getelementptr inbounds %struct.tipc_event, %struct.tipc_event* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %16, align 8
  %36 = load %struct.tipc_event*, %struct.tipc_event** %13, align 8
  %37 = getelementptr inbounds %struct.tipc_event, %struct.tipc_event* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %17, align 4
  %39 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %40 = icmp ne %struct.tipc_group* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %6
  br label %156

42:                                               ; preds = %6
  %43 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %44 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %43, i32 0, i32 2
  %45 = load %struct.net*, %struct.net** %44, align 8
  store %struct.net* %45, %struct.net** %19, align 8
  %46 = load %struct.net*, %struct.net** %19, align 8
  %47 = call i64 @tipc_own_addr(%struct.net* %46)
  store i64 %47, i64* %20, align 8
  %48 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %49 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %42
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %20, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i64, i64* %16, align 8
  %58 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %59 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %156

63:                                               ; preds = %56, %52, %42
  %64 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* %16, align 8
  %67 = call %struct.tipc_member* @tipc_group_find_member(%struct.tipc_group* %64, i64 %65, i64 %66)
  store %struct.tipc_member* %67, %struct.tipc_member** %18, align 8
  %68 = load i32, i32* %17, align 4
  switch i32 %68, label %151 [
    i32 129, label %69
    i32 128, label %121
  ]

69:                                               ; preds = %63
  %70 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %71 = icmp ne %struct.tipc_member* %70, null
  br i1 %71, label %90, label %72

72:                                               ; preds = %69
  %73 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* %16, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load i32, i32* @MBR_PUBLISHED, align 4
  %78 = call %struct.tipc_member* @tipc_group_create_member(%struct.tipc_group* %73, i64 %74, i64 %75, i64 %76, i32 %77)
  store %struct.tipc_member* %78, %struct.tipc_member** %18, align 8
  %79 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %80 = icmp ne %struct.tipc_member* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %72
  br label %152

82:                                               ; preds = %72
  %83 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %84 = call i32 @tipc_group_update_member(%struct.tipc_member* %83, i32 0)
  %85 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %86 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %87 = load i32, i32* @GRP_JOIN_MSG, align 4
  %88 = load %struct.sk_buff_head*, %struct.sk_buff_head** %12, align 8
  %89 = call i32 @tipc_group_proto_xmit(%struct.tipc_group* %85, %struct.tipc_member* %86, i32 %87, %struct.sk_buff_head* %88)
  br label %152

90:                                               ; preds = %69
  %91 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %92 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @MBR_JOINING, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %152

97:                                               ; preds = %90
  %98 = load i64, i64* %14, align 8
  %99 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %100 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %99, i32 0, i32 4
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* @MBR_JOINED, align 4
  %102 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %103 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @tipc_group_open(%struct.tipc_member* %104, i32* %105)
  %107 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %108 = call i32 @tipc_group_update_member(%struct.tipc_member* %107, i32 0)
  %109 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %110 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %111 = load i32, i32* @GRP_JOIN_MSG, align 4
  %112 = load %struct.sk_buff_head*, %struct.sk_buff_head** %12, align 8
  %113 = call i32 @tipc_group_proto_xmit(%struct.tipc_group* %109, %struct.tipc_member* %110, i32 %111, %struct.sk_buff_head* %112)
  %114 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %115 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %116 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %117 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.sk_buff_head*, %struct.sk_buff_head** %11, align 8
  %120 = call i32 @tipc_group_create_event(%struct.tipc_group* %114, %struct.tipc_member* %115, i32 129, i32 %118, %struct.sk_buff_head* %119)
  br label %152

121:                                              ; preds = %63
  %122 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %123 = icmp ne %struct.tipc_member* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  br label %152

125:                                              ; preds = %121
  %126 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %127 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %128 = call i32 @tipc_group_decr_active(%struct.tipc_group* %126, %struct.tipc_member* %127)
  %129 = load i32, i32* @MBR_LEAVING, align 4
  %130 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %131 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %133 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %132, i32 0, i32 1
  %134 = call i32 @list_del_init(i32* %133)
  %135 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %136 = load i32*, i32** %8, align 8
  %137 = call i32 @tipc_group_open(%struct.tipc_member* %135, i32* %136)
  %138 = load %struct.net*, %struct.net** %19, align 8
  %139 = load i64, i64* %15, align 8
  %140 = call i32 @tipc_node_is_up(%struct.net* %138, i64 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %125
  %143 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %144 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %145 = load %struct.tipc_member*, %struct.tipc_member** %18, align 8
  %146 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.sk_buff_head*, %struct.sk_buff_head** %11, align 8
  %149 = call i32 @tipc_group_create_event(%struct.tipc_group* %143, %struct.tipc_member* %144, i32 128, i32 %147, %struct.sk_buff_head* %148)
  br label %150

150:                                              ; preds = %142, %125
  br label %152

151:                                              ; preds = %63
  br label %152

152:                                              ; preds = %151, %150, %124, %97, %96, %82, %81
  %153 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %154 = call i32 @tipc_group_rcvbuf_limit(%struct.tipc_group* %153)
  %155 = load i32*, i32** %9, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %152, %62, %41
  ret void
}

declare dso_local i64 @msg_data(%struct.tipc_msg*) #1

declare dso_local i64 @tipc_own_addr(%struct.net*) #1

declare dso_local %struct.tipc_member* @tipc_group_find_member(%struct.tipc_group*, i64, i64) #1

declare dso_local %struct.tipc_member* @tipc_group_create_member(%struct.tipc_group*, i64, i64, i64, i32) #1

declare dso_local i32 @tipc_group_update_member(%struct.tipc_member*, i32) #1

declare dso_local i32 @tipc_group_proto_xmit(%struct.tipc_group*, %struct.tipc_member*, i32, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_group_open(%struct.tipc_member*, i32*) #1

declare dso_local i32 @tipc_group_create_event(%struct.tipc_group*, %struct.tipc_member*, i32, i32, %struct.sk_buff_head*) #1

declare dso_local i32 @tipc_group_decr_active(%struct.tipc_group*, %struct.tipc_member*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @tipc_node_is_up(%struct.net*, i64) #1

declare dso_local i32 @tipc_group_rcvbuf_limit(%struct.tipc_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
