; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_af_ax25.c_ax25_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_af_ax25.c_ax25_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.full_sockaddr_ax25 = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_AX25 = common dso_local global i64 0, align 8
@ax25_uid_policy = common dso_local global i64 0, align 8
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@null_ax25_address = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @ax25_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax25_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.full_sockaddr_ax25*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %8, align 8
  %18 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %19 = bitcast %struct.sockaddr* %18 to %struct.full_sockaddr_ax25*
  store %struct.full_sockaddr_ax25* %19, %struct.full_sockaddr_ax25** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %39

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 24
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 28
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %33, 24
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %152

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %23, %3
  %40 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %9, align 8
  %41 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AF_AX25, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %152

49:                                               ; preds = %39
  %50 = call i32 (...) @current_euid()
  %51 = call %struct.TYPE_10__* @ax25_findbyuid(i32 %50)
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %11, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %53 = icmp ne %struct.TYPE_10__* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %12, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %59 = call i32 @ax25_uid_put(%struct.TYPE_10__* %58)
  br label %75

60:                                               ; preds = %49
  %61 = load i64, i64* @ax25_uid_policy, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* @CAP_NET_ADMIN, align 4
  %65 = call i32 @capable(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @EACCES, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %152

70:                                               ; preds = %63, %60
  %71 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %9, align 8
  %72 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %70, %54
  %76 = load %struct.sock*, %struct.sock** %8, align 8
  %77 = call i32 @lock_sock(%struct.sock* %76)
  %78 = load %struct.sock*, %struct.sock** %8, align 8
  %79 = call %struct.TYPE_11__* @sk_to_ax25(%struct.sock* %78)
  store %struct.TYPE_11__* %79, %struct.TYPE_11__** %13, align 8
  %80 = load %struct.sock*, %struct.sock** %8, align 8
  %81 = load i32, i32* @SOCK_ZAPPED, align 4
  %82 = call i32 @sock_flag(%struct.sock* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %75
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %14, align 4
  br label %148

87:                                               ; preds = %75
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %142

96:                                               ; preds = %87
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp ugt i64 %98, 4
  br i1 %99, label %100, label %124

100:                                              ; preds = %96
  %101 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %9, align 8
  %102 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %124

106:                                              ; preds = %100
  %107 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %9, align 8
  %108 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = call i64 @ax25cmp(i32* %110, i32* @null_ax25_address)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %106
  %114 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %9, align 8
  %115 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = call i32* @ax25_addr_ax25dev(i32* %117)
  store i32* %118, i32** %10, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i32, i32* @EADDRNOTAVAIL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %14, align 4
  br label %148

123:                                              ; preds = %113, %106
  br label %134

124:                                              ; preds = %100, %96
  %125 = load %struct.full_sockaddr_ax25*, %struct.full_sockaddr_ax25** %9, align 8
  %126 = getelementptr inbounds %struct.full_sockaddr_ax25, %struct.full_sockaddr_ax25* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = call i32* @ax25_addr_ax25dev(i32* %127)
  store i32* %128, i32** %10, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i32, i32* @EADDRNOTAVAIL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %14, align 4
  br label %148

133:                                              ; preds = %124
  br label %134

134:                                              ; preds = %133, %123
  %135 = load i32*, i32** %10, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %139 = load i32*, i32** %10, align 8
  %140 = call i32 @ax25_fillin_cb(%struct.TYPE_11__* %138, i32* %139)
  br label %141

141:                                              ; preds = %137, %134
  br label %142

142:                                              ; preds = %141, %95
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %144 = call i32 @ax25_cb_add(%struct.TYPE_11__* %143)
  %145 = load %struct.sock*, %struct.sock** %8, align 8
  %146 = load i32, i32* @SOCK_ZAPPED, align 4
  %147 = call i32 @sock_reset_flag(%struct.sock* %145, i32 %146)
  br label %148

148:                                              ; preds = %142, %130, %120, %84
  %149 = load %struct.sock*, %struct.sock** %8, align 8
  %150 = call i32 @release_sock(%struct.sock* %149)
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %4, align 4
  br label %152

152:                                              ; preds = %148, %67, %46, %35
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local %struct.TYPE_10__* @ax25_findbyuid(i32) #1

declare dso_local i32 @current_euid(...) #1

declare dso_local i32 @ax25_uid_put(%struct.TYPE_10__*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_11__* @sk_to_ax25(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i64 @ax25cmp(i32*, i32*) #1

declare dso_local i32* @ax25_addr_ax25dev(i32*) #1

declare dso_local i32 @ax25_fillin_cb(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ax25_cb_add(%struct.TYPE_11__*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
