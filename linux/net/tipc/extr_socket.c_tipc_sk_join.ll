; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_join.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_socket.c_tipc_sk_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_sock = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.tipc_group*, i32, i32, %struct.tipc_msg }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.tipc_group = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.tipc_group_req = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.tipc_name_seq = type { i32, i32, i32 }

@TIPC_RESERVED_TYPES = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@TIPC_NODE_SCOPE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_sock*, %struct.tipc_group_req*)* @tipc_sk_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_sk_join(%struct.tipc_sock* %0, %struct.tipc_group_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tipc_sock*, align 8
  %5 = alloca %struct.tipc_group_req*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.tipc_group*, align 8
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca %struct.tipc_name_seq, align 4
  %10 = alloca i32, align 4
  store %struct.tipc_sock* %0, %struct.tipc_sock** %4, align 8
  store %struct.tipc_group_req* %1, %struct.tipc_group_req** %5, align 8
  %11 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %12 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %11, i32 0, i32 0
  %13 = call %struct.net* @sock_net(%struct.TYPE_4__* %12)
  store %struct.net* %13, %struct.net** %6, align 8
  %14 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %15 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %14, i32 0, i32 2
  %16 = load %struct.tipc_group*, %struct.tipc_group** %15, align 8
  store %struct.tipc_group* %16, %struct.tipc_group** %7, align 8
  %17 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %18 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %17, i32 0, i32 5
  store %struct.tipc_msg* %18, %struct.tipc_msg** %8, align 8
  %19 = load %struct.tipc_group_req*, %struct.tipc_group_req** %5, align 8
  %20 = getelementptr inbounds %struct.tipc_group_req, %struct.tipc_group_req* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TIPC_RESERVED_TYPES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EACCES, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %120

27:                                               ; preds = %2
  %28 = load %struct.tipc_group_req*, %struct.tipc_group_req** %5, align 8
  %29 = getelementptr inbounds %struct.tipc_group_req, %struct.tipc_group_req* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TIPC_NODE_SCOPE, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %120

36:                                               ; preds = %27
  %37 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %38 = icmp ne %struct.tipc_group* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EACCES, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %120

42:                                               ; preds = %36
  %43 = load %struct.net*, %struct.net** %6, align 8
  %44 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %45 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tipc_group_req*, %struct.tipc_group_req** %5, align 8
  %48 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %49 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %48, i32 0, i32 3
  %50 = call %struct.tipc_group* @tipc_group_create(%struct.net* %43, i32 %46, %struct.tipc_group_req* %47, i32* %49)
  store %struct.tipc_group* %50, %struct.tipc_group** %7, align 8
  %51 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %52 = icmp ne %struct.tipc_group* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %120

56:                                               ; preds = %42
  %57 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %58 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %59 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %58, i32 0, i32 2
  store %struct.tipc_group* %57, %struct.tipc_group** %59, align 8
  %60 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %61 = load %struct.tipc_group_req*, %struct.tipc_group_req** %5, align 8
  %62 = getelementptr inbounds %struct.tipc_group_req, %struct.tipc_group_req* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @msg_set_lookup_scope(%struct.tipc_msg* %60, i32 %63)
  %65 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %66 = load %struct.tipc_group_req*, %struct.tipc_group_req** %5, align 8
  %67 = getelementptr inbounds %struct.tipc_group_req, %struct.tipc_group_req* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @msg_set_nametype(%struct.tipc_msg* %65, i32 %68)
  %70 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %71 = call i32 @msg_set_dest_droppable(%struct.tipc_msg* %70, i32 1)
  %72 = load %struct.tipc_group_req*, %struct.tipc_group_req** %5, align 8
  %73 = getelementptr inbounds %struct.tipc_group_req, %struct.tipc_group_req* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %9, i32 0, i32 2
  store i32 %74, i32* %75, align 4
  %76 = load %struct.tipc_group_req*, %struct.tipc_group_req** %5, align 8
  %77 = getelementptr inbounds %struct.tipc_group_req, %struct.tipc_group_req* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %9, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %9, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %9, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load %struct.net*, %struct.net** %6, align 8
  %84 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %85 = load %struct.tipc_group_req*, %struct.tipc_group_req** %5, align 8
  %86 = getelementptr inbounds %struct.tipc_group_req, %struct.tipc_group_req* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.tipc_group_req*, %struct.tipc_group_req** %5, align 8
  %89 = getelementptr inbounds %struct.tipc_group_req, %struct.tipc_group_req* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @tipc_nametbl_build_group(%struct.net* %83, %struct.tipc_group* %84, i32 %87, i32 %90)
  %92 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %93 = load %struct.tipc_group_req*, %struct.tipc_group_req** %5, align 8
  %94 = getelementptr inbounds %struct.tipc_group_req, %struct.tipc_group_req* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @tipc_sk_publish(%struct.tipc_sock* %92, i32 %95, %struct.tipc_name_seq* %9)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %56
  %100 = load %struct.net*, %struct.net** %6, align 8
  %101 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %102 = call i32 @tipc_group_delete(%struct.net* %100, %struct.tipc_group* %101)
  %103 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %104 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %103, i32 0, i32 2
  store %struct.tipc_group* null, %struct.tipc_group** %104, align 8
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %3, align 4
  br label %120

106:                                              ; preds = %56
  %107 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %108 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  %110 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %111 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = load %struct.net*, %struct.net** %6, align 8
  %114 = load %struct.tipc_group*, %struct.tipc_group** %7, align 8
  %115 = load %struct.tipc_sock*, %struct.tipc_sock** %4, align 8
  %116 = getelementptr inbounds %struct.tipc_sock, %struct.tipc_sock* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = call i32 @tipc_group_join(%struct.net* %113, %struct.tipc_group* %114, i32* %117)
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %106, %99, %53, %39, %33, %24
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.net* @sock_net(%struct.TYPE_4__*) #1

declare dso_local %struct.tipc_group* @tipc_group_create(%struct.net*, i32, %struct.tipc_group_req*, i32*) #1

declare dso_local i32 @msg_set_lookup_scope(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_nametype(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_dest_droppable(%struct.tipc_msg*, i32) #1

declare dso_local i32 @tipc_nametbl_build_group(%struct.net*, %struct.tipc_group*, i32, i32) #1

declare dso_local i32 @tipc_sk_publish(%struct.tipc_sock*, i32, %struct.tipc_name_seq*) #1

declare dso_local i32 @tipc_group_delete(%struct.net*, %struct.tipc_group*) #1

declare dso_local i32 @tipc_group_join(%struct.net*, %struct.tipc_group*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
