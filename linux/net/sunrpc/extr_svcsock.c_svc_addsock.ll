; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_addsock.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcsock.c_svc_addsock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32 }
%struct.cred = type { i32 }
%struct.socket = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.svc_sock = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@PF_INET6 = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@EISCONN = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@SVC_SOCK_DEFAULTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_addsock(%struct.svc_serv* %0, i32 %1, i8* %2, i64 %3, %struct.cred* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.svc_serv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cred*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.socket*, align 8
  %14 = alloca %struct.svc_sock*, align 8
  %15 = alloca %struct.sockaddr_storage, align 4
  %16 = alloca %struct.sockaddr*, align 8
  %17 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.cred* %4, %struct.cred** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.socket* @sockfd_lookup(i32 %18, i32* %12)
  store %struct.socket* %19, %struct.socket** %13, align 8
  store %struct.svc_sock* null, %struct.svc_sock** %14, align 8
  %20 = bitcast %struct.sockaddr_storage* %15 to %struct.sockaddr*
  store %struct.sockaddr* %20, %struct.sockaddr** %16, align 8
  %21 = load %struct.socket*, %struct.socket** %13, align 8
  %22 = icmp ne %struct.socket* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %6, align 4
  br label %124

25:                                               ; preds = %5
  %26 = load i32, i32* @EAFNOSUPPORT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %12, align 4
  %28 = load %struct.socket*, %struct.socket** %13, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PF_INET, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %25
  %36 = load %struct.socket*, %struct.socket** %13, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PF_INET6, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %120

44:                                               ; preds = %35, %25
  %45 = load i32, i32* @EPROTONOSUPPORT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  %47 = load %struct.socket*, %struct.socket** %13, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IPPROTO_TCP, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %44
  %55 = load %struct.socket*, %struct.socket** %13, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IPPROTO_UDP, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %120

63:                                               ; preds = %54, %44
  %64 = load i32, i32* @EISCONN, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %12, align 4
  %66 = load %struct.socket*, %struct.socket** %13, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SS_UNCONNECTED, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %120

72:                                               ; preds = %63
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* @THIS_MODULE, align 4
  %76 = call i32 @try_module_get(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  br label %120

79:                                               ; preds = %72
  %80 = load %struct.svc_serv*, %struct.svc_serv** %7, align 8
  %81 = load %struct.socket*, %struct.socket** %13, align 8
  %82 = load i32, i32* @SVC_SOCK_DEFAULTS, align 4
  %83 = call %struct.svc_sock* @svc_setup_socket(%struct.svc_serv* %80, %struct.socket* %81, i32 %82)
  store %struct.svc_sock* %83, %struct.svc_sock** %14, align 8
  %84 = load %struct.svc_sock*, %struct.svc_sock** %14, align 8
  %85 = call i64 @IS_ERR(%struct.svc_sock* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load i32, i32* @THIS_MODULE, align 4
  %89 = call i32 @module_put(i32 %88)
  %90 = load %struct.svc_sock*, %struct.svc_sock** %14, align 8
  %91 = call i32 @PTR_ERR(%struct.svc_sock* %90)
  store i32 %91, i32* %12, align 4
  br label %120

92:                                               ; preds = %79
  %93 = load %struct.svc_sock*, %struct.svc_sock** %14, align 8
  %94 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %97 = call i32 @kernel_getsockname(i32 %95, %struct.sockaddr* %96)
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %92
  %101 = load %struct.svc_sock*, %struct.svc_sock** %14, align 8
  %102 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %101, i32 0, i32 0
  %103 = load %struct.sockaddr*, %struct.sockaddr** %16, align 8
  %104 = load i32, i32* %17, align 4
  %105 = call i32 @svc_xprt_set_local(%struct.TYPE_5__* %102, %struct.sockaddr* %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %92
  %107 = load %struct.cred*, %struct.cred** %11, align 8
  %108 = call i32 @get_cred(%struct.cred* %107)
  %109 = load %struct.svc_sock*, %struct.svc_sock** %14, align 8
  %110 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  %112 = load %struct.svc_serv*, %struct.svc_serv** %7, align 8
  %113 = load %struct.svc_sock*, %struct.svc_sock** %14, align 8
  %114 = getelementptr inbounds %struct.svc_sock, %struct.svc_sock* %113, i32 0, i32 0
  %115 = call i32 @svc_add_new_perm_xprt(%struct.svc_serv* %112, %struct.TYPE_5__* %114)
  %116 = load %struct.svc_sock*, %struct.svc_sock** %14, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = load i64, i64* %10, align 8
  %119 = call i32 @svc_one_sock_name(%struct.svc_sock* %116, i8* %117, i64 %118)
  store i32 %119, i32* %6, align 4
  br label %124

120:                                              ; preds = %87, %78, %71, %62, %43
  %121 = load %struct.socket*, %struct.socket** %13, align 8
  %122 = call i32 @sockfd_put(%struct.socket* %121)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %120, %106, %23
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local %struct.socket* @sockfd_lookup(i32, i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local %struct.svc_sock* @svc_setup_socket(%struct.svc_serv*, %struct.socket*, i32) #1

declare dso_local i64 @IS_ERR(%struct.svc_sock*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @PTR_ERR(%struct.svc_sock*) #1

declare dso_local i32 @kernel_getsockname(i32, %struct.sockaddr*) #1

declare dso_local i32 @svc_xprt_set_local(%struct.TYPE_5__*, %struct.sockaddr*, i32) #1

declare dso_local i32 @get_cred(%struct.cred*) #1

declare dso_local i32 @svc_add_new_perm_xprt(%struct.svc_serv*, %struct.TYPE_5__*) #1

declare dso_local i32 @svc_one_sock_name(%struct.svc_sock*, i8*, i64) #1

declare dso_local i32 @sockfd_put(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
