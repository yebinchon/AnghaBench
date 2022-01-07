; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_af_phonet.c_pn_socket_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_af_phonet.c_pn_socket_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32, i32 }
%struct.sock = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.sock*)*, i32 }
%struct.pn_sock = type { i64, i64, i64 }
%struct.phonet_protocol = type { i64, i32, i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PN_PROTO_PHONET = common dso_local global i32 0, align 4
@PN_PROTO_PIPE = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"net-pf-%d-proto-%d\00", align 1
@PF_PHONET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @pn_socket_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_socket_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.pn_sock*, align 8
  %12 = alloca %struct.phonet_protocol*, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %15 = call i32 @capable(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %120

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.socket*, %struct.socket** %7, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  switch i64 %26, label %31 [
    i64 129, label %27
    i64 128, label %29
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @PN_PROTO_PHONET, align 4
  store i32 %28, i32* %8, align 4
  br label %34

29:                                               ; preds = %23
  %30 = load i32, i32* @PN_PROTO_PIPE, align 4
  store i32 %30, i32* %8, align 4
  br label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @EPROTONOSUPPORT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %120

34:                                               ; preds = %29, %27
  br label %35

35:                                               ; preds = %34, %20
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.phonet_protocol* @phonet_proto_get(i32 %36)
  store %struct.phonet_protocol* %37, %struct.phonet_protocol** %12, align 8
  %38 = load %struct.phonet_protocol*, %struct.phonet_protocol** %12, align 8
  %39 = icmp eq %struct.phonet_protocol* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* @PF_PHONET, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @request_module(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = call %struct.phonet_protocol* @phonet_proto_get(i32 %46)
  store %struct.phonet_protocol* %47, %struct.phonet_protocol** %12, align 8
  br label %48

48:                                               ; preds = %45, %40, %35
  %49 = load %struct.phonet_protocol*, %struct.phonet_protocol** %12, align 8
  %50 = icmp eq %struct.phonet_protocol* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @EPROTONOSUPPORT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %120

54:                                               ; preds = %48
  %55 = load %struct.socket*, %struct.socket** %7, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.phonet_protocol*, %struct.phonet_protocol** %12, align 8
  %59 = getelementptr inbounds %struct.phonet_protocol, %struct.phonet_protocol* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* @EPROTONOSUPPORT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %13, align 4
  br label %116

65:                                               ; preds = %54
  %66 = load %struct.net*, %struct.net** %6, align 8
  %67 = load i32, i32* @PF_PHONET, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = load %struct.phonet_protocol*, %struct.phonet_protocol** %12, align 8
  %70 = getelementptr inbounds %struct.phonet_protocol, %struct.phonet_protocol* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call %struct.sock* @sk_alloc(%struct.net* %66, i32 %67, i32 %68, i32 %71, i32 %72)
  store %struct.sock* %73, %struct.sock** %10, align 8
  %74 = load %struct.sock*, %struct.sock** %10, align 8
  %75 = icmp eq %struct.sock* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %13, align 4
  br label %116

79:                                               ; preds = %65
  %80 = load %struct.socket*, %struct.socket** %7, align 8
  %81 = load %struct.sock*, %struct.sock** %10, align 8
  %82 = call i32 @sock_init_data(%struct.socket* %80, %struct.sock* %81)
  %83 = load i32, i32* @SS_UNCONNECTED, align 4
  %84 = load %struct.socket*, %struct.socket** %7, align 8
  %85 = getelementptr inbounds %struct.socket, %struct.socket* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.phonet_protocol*, %struct.phonet_protocol** %12, align 8
  %87 = getelementptr inbounds %struct.phonet_protocol, %struct.phonet_protocol* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.socket*, %struct.socket** %7, align 8
  %90 = getelementptr inbounds %struct.socket, %struct.socket* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load %struct.sock*, %struct.sock** %10, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.sock*, %struct.sock** %10, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.sock*, %struct.sock** %10, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.sock*, %struct.sock** %10, align 8
  %102 = call %struct.pn_sock* @pn_sk(%struct.sock* %101)
  store %struct.pn_sock* %102, %struct.pn_sock** %11, align 8
  %103 = load %struct.pn_sock*, %struct.pn_sock** %11, align 8
  %104 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %struct.pn_sock*, %struct.pn_sock** %11, align 8
  %106 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  %107 = load %struct.pn_sock*, %struct.pn_sock** %11, align 8
  %108 = getelementptr inbounds %struct.pn_sock, %struct.pn_sock* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load %struct.sock*, %struct.sock** %10, align 8
  %110 = getelementptr inbounds %struct.sock, %struct.sock* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %112, align 8
  %114 = load %struct.sock*, %struct.sock** %10, align 8
  %115 = call i32 %113(%struct.sock* %114)
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %79, %76, %62
  %117 = load %struct.phonet_protocol*, %struct.phonet_protocol** %12, align 8
  %118 = call i32 @phonet_proto_put(%struct.phonet_protocol* %117)
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %116, %51, %31, %17
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.phonet_protocol* @phonet_proto_get(i32) #1

declare dso_local i64 @request_module(i8*, i32, i32) #1

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local %struct.pn_sock* @pn_sk(%struct.sock*) #1

declare dso_local i32 @phonet_proto_put(%struct.phonet_protocol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
