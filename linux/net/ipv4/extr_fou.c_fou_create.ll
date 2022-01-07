; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fou.c_fou_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fou.c_fou_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fou_cfg = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.fou = type { i32, i32, %struct.socket*, i32, i32, i32 }
%struct.udp_tunnel_sock_cfg = type { i32, i32, i32, i32, i32*, %struct.fou* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fou_udp_recv = common dso_local global i32 0, align 4
@fou_gro_receive = common dso_local global i32 0, align 4
@fou_gro_complete = common dso_local global i32 0, align 4
@gue_udp_recv = common dso_local global i32 0, align 4
@gue_gro_receive = common dso_local global i32 0, align 4
@gue_gro_complete = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.fou_cfg*, %struct.socket**)* @fou_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fou_create(%struct.net* %0, %struct.fou_cfg* %1, %struct.socket** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.fou_cfg*, align 8
  %7 = alloca %struct.socket**, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.fou*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.udp_tunnel_sock_cfg, align 8
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.fou_cfg* %1, %struct.fou_cfg** %6, align 8
  store %struct.socket** %2, %struct.socket*** %7, align 8
  store %struct.socket* null, %struct.socket** %8, align 8
  store %struct.fou* null, %struct.fou** %9, align 8
  %13 = load %struct.net*, %struct.net** %5, align 8
  %14 = load %struct.fou_cfg*, %struct.fou_cfg** %6, align 8
  %15 = getelementptr inbounds %struct.fou_cfg, %struct.fou_cfg* %14, i32 0, i32 3
  %16 = call i32 @udp_sock_create(%struct.net* %13, %struct.TYPE_2__* %15, %struct.socket** %8)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %108

20:                                               ; preds = %3
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.fou* @kzalloc(i32 32, i32 %21)
  store %struct.fou* %22, %struct.fou** %9, align 8
  %23 = load %struct.fou*, %struct.fou** %9, align 8
  %24 = icmp ne %struct.fou* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %12, align 4
  br label %108

28:                                               ; preds = %20
  %29 = load %struct.socket*, %struct.socket** %8, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 0
  %31 = load %struct.sock*, %struct.sock** %30, align 8
  store %struct.sock* %31, %struct.sock** %10, align 8
  %32 = load %struct.fou_cfg*, %struct.fou_cfg** %6, align 8
  %33 = getelementptr inbounds %struct.fou_cfg, %struct.fou_cfg* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fou*, %struct.fou** %9, align 8
  %37 = getelementptr inbounds %struct.fou, %struct.fou* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.fou_cfg*, %struct.fou_cfg** %6, align 8
  %39 = getelementptr inbounds %struct.fou_cfg, %struct.fou_cfg* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fou*, %struct.fou** %9, align 8
  %43 = getelementptr inbounds %struct.fou, %struct.fou* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.fou_cfg*, %struct.fou_cfg** %6, align 8
  %45 = getelementptr inbounds %struct.fou_cfg, %struct.fou_cfg* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fou*, %struct.fou** %9, align 8
  %48 = getelementptr inbounds %struct.fou, %struct.fou* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.fou_cfg*, %struct.fou_cfg** %6, align 8
  %50 = getelementptr inbounds %struct.fou_cfg, %struct.fou_cfg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fou*, %struct.fou** %9, align 8
  %53 = getelementptr inbounds %struct.fou, %struct.fou* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.socket*, %struct.socket** %8, align 8
  %55 = load %struct.fou*, %struct.fou** %9, align 8
  %56 = getelementptr inbounds %struct.fou, %struct.fou* %55, i32 0, i32 2
  store %struct.socket* %54, %struct.socket** %56, align 8
  %57 = call i32 @memset(%struct.udp_tunnel_sock_cfg* %11, i32 0, i32 32)
  %58 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %11, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.fou*, %struct.fou** %9, align 8
  %60 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %11, i32 0, i32 5
  store %struct.fou* %59, %struct.fou** %60, align 8
  %61 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %11, i32 0, i32 4
  store i32* null, i32** %61, align 8
  %62 = load %struct.fou_cfg*, %struct.fou_cfg** %6, align 8
  %63 = getelementptr inbounds %struct.fou_cfg, %struct.fou_cfg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %84 [
    i32 129, label %65
    i32 128, label %77
  ]

65:                                               ; preds = %28
  %66 = load i32, i32* @fou_udp_recv, align 4
  %67 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %11, i32 0, i32 3
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @fou_gro_receive, align 4
  %69 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %11, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  %70 = load i32, i32* @fou_gro_complete, align 4
  %71 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %11, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load %struct.fou_cfg*, %struct.fou_cfg** %6, align 8
  %73 = getelementptr inbounds %struct.fou_cfg, %struct.fou_cfg* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fou*, %struct.fou** %9, align 8
  %76 = getelementptr inbounds %struct.fou, %struct.fou* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %87

77:                                               ; preds = %28
  %78 = load i32, i32* @gue_udp_recv, align 4
  %79 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %11, i32 0, i32 3
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @gue_gro_receive, align 4
  %81 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %11, i32 0, i32 2
  store i32 %80, i32* %81, align 8
  %82 = load i32, i32* @gue_gro_complete, align 4
  %83 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %11, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  br label %87

84:                                               ; preds = %28
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %12, align 4
  br label %108

87:                                               ; preds = %77, %65
  %88 = load %struct.net*, %struct.net** %5, align 8
  %89 = load %struct.socket*, %struct.socket** %8, align 8
  %90 = call i32 @setup_udp_tunnel_sock(%struct.net* %88, %struct.socket* %89, %struct.udp_tunnel_sock_cfg* %11)
  %91 = load i32, i32* @GFP_ATOMIC, align 4
  %92 = load %struct.sock*, %struct.sock** %10, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.net*, %struct.net** %5, align 8
  %95 = load %struct.fou*, %struct.fou** %9, align 8
  %96 = load %struct.fou_cfg*, %struct.fou_cfg** %6, align 8
  %97 = call i32 @fou_add_to_port_list(%struct.net* %94, %struct.fou* %95, %struct.fou_cfg* %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  br label %108

101:                                              ; preds = %87
  %102 = load %struct.socket**, %struct.socket*** %7, align 8
  %103 = icmp ne %struct.socket** %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.socket*, %struct.socket** %8, align 8
  %106 = load %struct.socket**, %struct.socket*** %7, align 8
  store %struct.socket* %105, %struct.socket** %106, align 8
  br label %107

107:                                              ; preds = %104, %101
  store i32 0, i32* %4, align 4
  br label %118

108:                                              ; preds = %100, %84, %25, %19
  %109 = load %struct.fou*, %struct.fou** %9, align 8
  %110 = call i32 @kfree(%struct.fou* %109)
  %111 = load %struct.socket*, %struct.socket** %8, align 8
  %112 = icmp ne %struct.socket* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.socket*, %struct.socket** %8, align 8
  %115 = call i32 @udp_tunnel_sock_release(%struct.socket* %114)
  br label %116

116:                                              ; preds = %113, %108
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %107
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @udp_sock_create(%struct.net*, %struct.TYPE_2__*, %struct.socket**) #1

declare dso_local %struct.fou* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.udp_tunnel_sock_cfg*, i32, i32) #1

declare dso_local i32 @setup_udp_tunnel_sock(%struct.net*, %struct.socket*, %struct.udp_tunnel_sock_cfg*) #1

declare dso_local i32 @fou_add_to_port_list(%struct.net*, %struct.fou*, %struct.fou_cfg*) #1

declare dso_local i32 @kfree(%struct.fou*) #1

declare dso_local i32 @udp_tunnel_sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
