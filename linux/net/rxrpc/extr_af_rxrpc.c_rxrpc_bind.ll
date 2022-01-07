; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_af_rxrpc.c_rxrpc_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_rxrpc = type { i32 }
%struct.rxrpc_local = type { i32, i32 }
%struct.rxrpc_sock = type { %struct.TYPE_4__, i32, %struct.sockaddr_rxrpc, %struct.rxrpc_local* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%p,%p,%d\00", align 1
@RXRPC_CLIENT_BOUND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@RXRPC_SERVER_BOUND2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @rxrpc_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_rxrpc*, align 8
  %9 = alloca %struct.rxrpc_local*, align 8
  %10 = alloca %struct.rxrpc_sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %14 = bitcast %struct.sockaddr* %13 to %struct.sockaddr_rxrpc*
  store %struct.sockaddr_rxrpc* %14, %struct.sockaddr_rxrpc** %8, align 8
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.rxrpc_sock* @rxrpc_sk(i32 %17)
  store %struct.rxrpc_sock* %18, %struct.rxrpc_sock** %10, align 8
  %19 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @_enter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.rxrpc_sock* %19, %struct.sockaddr* %20, i32 %21)
  %23 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %24 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @rxrpc_validate_address(%struct.rxrpc_sock* %23, %struct.sockaddr_rxrpc* %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %155

30:                                               ; preds = %3
  %31 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %8, align 8
  %32 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %35 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %34, i32 0, i32 0
  %36 = call i32 @lock_sock(%struct.TYPE_4__* %35)
  %37 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %38 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %135 [
    i32 128, label %41
    i32 129, label %96
  ]

41:                                               ; preds = %30
  %42 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %43 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %42, i32 0, i32 2
  %44 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %8, align 8
  %45 = bitcast %struct.sockaddr_rxrpc* %43 to i8*
  %46 = bitcast %struct.sockaddr_rxrpc* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %48 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %47, i32 0, i32 0
  %49 = call i32 @sock_net(%struct.TYPE_4__* %48)
  %50 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %51 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %50, i32 0, i32 2
  %52 = call %struct.rxrpc_local* @rxrpc_lookup_local(i32 %49, %struct.sockaddr_rxrpc* %51)
  store %struct.rxrpc_local* %52, %struct.rxrpc_local** %9, align 8
  %53 = load %struct.rxrpc_local*, %struct.rxrpc_local** %9, align 8
  %54 = call i32 @IS_ERR(%struct.rxrpc_local* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  %57 = load %struct.rxrpc_local*, %struct.rxrpc_local** %9, align 8
  %58 = call i32 @PTR_ERR(%struct.rxrpc_local* %57)
  store i32 %58, i32* %12, align 4
  br label %151

59:                                               ; preds = %41
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %59
  %63 = load %struct.rxrpc_local*, %struct.rxrpc_local** %9, align 8
  %64 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %63, i32 0, i32 0
  %65 = call i32 @write_lock(i32* %64)
  %66 = load %struct.rxrpc_local*, %struct.rxrpc_local** %9, align 8
  %67 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @rcu_access_pointer(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %143

72:                                               ; preds = %62
  %73 = load %struct.rxrpc_local*, %struct.rxrpc_local** %9, align 8
  %74 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %75 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %74, i32 0, i32 3
  store %struct.rxrpc_local* %73, %struct.rxrpc_local** %75, align 8
  %76 = load %struct.rxrpc_local*, %struct.rxrpc_local** %9, align 8
  %77 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %80 = call i32 @rcu_assign_pointer(i32 %78, %struct.rxrpc_sock* %79)
  %81 = load %struct.rxrpc_local*, %struct.rxrpc_local** %9, align 8
  %82 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %81, i32 0, i32 0
  %83 = call i32 @write_unlock(i32* %82)
  %84 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %85 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 129, i32* %86, align 8
  br label %95

87:                                               ; preds = %59
  %88 = load %struct.rxrpc_local*, %struct.rxrpc_local** %9, align 8
  %89 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %90 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %89, i32 0, i32 3
  store %struct.rxrpc_local* %88, %struct.rxrpc_local** %90, align 8
  %91 = load i32, i32* @RXRPC_CLIENT_BOUND, align 4
  %92 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %93 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  br label %95

95:                                               ; preds = %87, %72
  br label %138

96:                                               ; preds = %30
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %151

102:                                              ; preds = %96
  %103 = load i32, i32* @EADDRINUSE, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %107 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %105, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %151

112:                                              ; preds = %102
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %12, align 4
  %115 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %116 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %8, align 8
  %120 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %8, align 8
  %122 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %123 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %122, i32 0, i32 2
  %124 = call i32 @memcmp(%struct.sockaddr_rxrpc* %121, %struct.sockaddr_rxrpc* %123, i32 4)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %112
  br label %151

127:                                              ; preds = %112
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %130 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @RXRPC_SERVER_BOUND2, align 4
  %132 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %133 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 8
  br label %138

135:                                              ; preds = %30
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %12, align 4
  br label %151

138:                                              ; preds = %127, %95
  %139 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %140 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %139, i32 0, i32 0
  %141 = call i32 @release_sock(%struct.TYPE_4__* %140)
  %142 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %159

143:                                              ; preds = %71
  %144 = load %struct.rxrpc_local*, %struct.rxrpc_local** %9, align 8
  %145 = getelementptr inbounds %struct.rxrpc_local, %struct.rxrpc_local* %144, i32 0, i32 0
  %146 = call i32 @write_unlock(i32* %145)
  %147 = load %struct.rxrpc_local*, %struct.rxrpc_local** %9, align 8
  %148 = call i32 @rxrpc_unuse_local(%struct.rxrpc_local* %147)
  %149 = load i32, i32* @EADDRINUSE, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %143, %135, %126, %111, %101, %56
  %152 = load %struct.rxrpc_sock*, %struct.rxrpc_sock** %10, align 8
  %153 = getelementptr inbounds %struct.rxrpc_sock, %struct.rxrpc_sock* %152, i32 0, i32 0
  %154 = call i32 @release_sock(%struct.TYPE_4__* %153)
  br label %155

155:                                              ; preds = %151, %29
  %156 = load i32, i32* %12, align 4
  %157 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %155, %138
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.rxrpc_sock* @rxrpc_sk(i32) #1

declare dso_local i32 @_enter(i8*, %struct.rxrpc_sock*, %struct.sockaddr*, i32) #1

declare dso_local i32 @rxrpc_validate_address(%struct.rxrpc_sock*, %struct.sockaddr_rxrpc*, i32) #1

declare dso_local i32 @lock_sock(%struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.rxrpc_local* @rxrpc_lookup_local(i32, %struct.sockaddr_rxrpc*) #1

declare dso_local i32 @sock_net(%struct.TYPE_4__*) #1

declare dso_local i32 @IS_ERR(%struct.rxrpc_local*) #1

declare dso_local i32 @PTR_ERR(%struct.rxrpc_local*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.rxrpc_sock*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @memcmp(%struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc*, i32) #1

declare dso_local i32 @release_sock(%struct.TYPE_4__*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @rxrpc_unuse_local(%struct.rxrpc_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
