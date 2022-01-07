; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_af_rose.c_rose_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_af_rose.c_rose_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.rose_sock = type { i32, i32*, %struct.net_device*, i32, i32 }
%struct.net_device = type { i32 }
%struct.sockaddr_rose = type { i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.full_sockaddr_rose = type { i32* }

@SOCK_ZAPPED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_ROSE = common dso_local global i64 0, align 8
@ROSE_MAX_DIGIS = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ax25_uid_policy = common dso_local global i64 0, align 8
@CAP_NET_BIND_SERVICE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @rose_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.rose_sock*, align 8
  %10 = alloca %struct.sockaddr_rose*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.full_sockaddr_rose*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %8, align 8
  %19 = load %struct.sock*, %struct.sock** %8, align 8
  %20 = call %struct.rose_sock* @rose_sk(%struct.sock* %19)
  store %struct.rose_sock* %20, %struct.rose_sock** %9, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = bitcast %struct.sockaddr* %21 to %struct.sockaddr_rose*
  store %struct.sockaddr_rose* %22, %struct.sockaddr_rose** %10, align 8
  %23 = load %struct.sock*, %struct.sock** %8, align 8
  %24 = load i32, i32* @SOCK_ZAPPED, align 4
  %25 = call i32 @sock_flag(%struct.sock* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %175

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 24
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 8
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %175

41:                                               ; preds = %34, %30
  %42 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %10, align 8
  %43 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AF_ROSE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %175

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %52, 24
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %10, align 8
  %56 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %175

62:                                               ; preds = %54, %50
  %63 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %10, align 8
  %64 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ROSE_MAX_DIGIS, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %175

71:                                               ; preds = %62
  %72 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %10, align 8
  %73 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %72, i32 0, i32 3
  %74 = call %struct.net_device* @rose_dev_get(i32* %73)
  store %struct.net_device* %74, %struct.net_device** %11, align 8
  %75 = icmp eq %struct.net_device* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @EADDRNOTAVAIL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %175

79:                                               ; preds = %71
  %80 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %10, align 8
  %81 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %80, i32 0, i32 4
  store i32* %81, i32** %12, align 8
  %82 = call i32 (...) @current_euid()
  %83 = call %struct.TYPE_4__* @ax25_findbyuid(i32 %82)
  store %struct.TYPE_4__* %83, %struct.TYPE_4__** %13, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %85 = icmp ne %struct.TYPE_4__* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %79
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.rose_sock*, %struct.rose_sock** %9, align 8
  %91 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %93 = call i32 @ax25_uid_put(%struct.TYPE_4__* %92)
  br label %111

94:                                               ; preds = %79
  %95 = load i64, i64* @ax25_uid_policy, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %99 = call i32 @capable(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = load %struct.net_device*, %struct.net_device** %11, align 8
  %103 = call i32 @dev_put(%struct.net_device* %102)
  %104 = load i32, i32* @EACCES, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %175

106:                                              ; preds = %97, %94
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.rose_sock*, %struct.rose_sock** %9, align 8
  %110 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %106, %86
  %112 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %10, align 8
  %113 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.rose_sock*, %struct.rose_sock** %9, align 8
  %116 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load %struct.net_device*, %struct.net_device** %11, align 8
  %118 = load %struct.rose_sock*, %struct.rose_sock** %9, align 8
  %119 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %118, i32 0, i32 2
  store %struct.net_device* %117, %struct.net_device** %119, align 8
  %120 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %10, align 8
  %121 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.rose_sock*, %struct.rose_sock** %9, align 8
  %124 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = icmp eq i64 %126, 8
  br i1 %127, label %128, label %155

128:                                              ; preds = %111
  %129 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %130 = bitcast %struct.sockaddr* %129 to %struct.full_sockaddr_rose*
  store %struct.full_sockaddr_rose* %130, %struct.full_sockaddr_rose** %15, align 8
  store i32 0, i32* %14, align 4
  br label %131

131:                                              ; preds = %151, %128
  %132 = load i32, i32* %14, align 4
  %133 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %10, align 8
  %134 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %154

137:                                              ; preds = %131
  %138 = load %struct.full_sockaddr_rose*, %struct.full_sockaddr_rose** %15, align 8
  %139 = getelementptr inbounds %struct.full_sockaddr_rose, %struct.full_sockaddr_rose* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.rose_sock*, %struct.rose_sock** %9, align 8
  %146 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %144, i32* %150, align 4
  br label %151

151:                                              ; preds = %137
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %14, align 4
  br label %131

154:                                              ; preds = %131
  br label %169

155:                                              ; preds = %111
  %156 = load %struct.rose_sock*, %struct.rose_sock** %9, align 8
  %157 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = load %struct.sockaddr_rose*, %struct.sockaddr_rose** %10, align 8
  %162 = getelementptr inbounds %struct.sockaddr_rose, %struct.sockaddr_rose* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.rose_sock*, %struct.rose_sock** %9, align 8
  %165 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 %163, i32* %167, align 4
  br label %168

168:                                              ; preds = %160, %155
  br label %169

169:                                              ; preds = %168, %154
  %170 = load %struct.sock*, %struct.sock** %8, align 8
  %171 = call i32 @rose_insert_socket(%struct.sock* %170)
  %172 = load %struct.sock*, %struct.sock** %8, align 8
  %173 = load i32, i32* @SOCK_ZAPPED, align 4
  %174 = call i32 @sock_reset_flag(%struct.sock* %172, i32 %173)
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %169, %101, %76, %68, %59, %47, %38, %27
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.net_device* @rose_dev_get(i32*) #1

declare dso_local %struct.TYPE_4__* @ax25_findbyuid(i32) #1

declare dso_local i32 @current_euid(...) #1

declare dso_local i32 @ax25_uid_put(%struct.TYPE_4__*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @rose_insert_socket(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
