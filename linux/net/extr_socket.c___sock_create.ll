; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c___sock_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c___sock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.net = type { i32 }
%struct.socket = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.net_proto_family = type { i32 (%struct.net.0*, %struct.socket*, i32, i32)*, i32 }
%struct.net.0 = type opaque

@NPROTO = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@SOCK_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_PACKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s uses obsolete (PF_INET,SOCK_PACKET)\0A\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PF_PACKET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"socket: no more sockets\0A\00", align 1
@ENFILE = common dso_local global i32 0, align 4
@net_families = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sock_create(%struct.net* %0, i32 %1, i32 %2, i32 %3, %struct.socket** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.socket**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.socket*, align 8
  %16 = alloca %struct.net_proto_family*, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.socket** %4, %struct.socket*** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @NPROTO, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %6
  %24 = load i32, i32* @EAFNOSUPPORT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %147

26:                                               ; preds = %19
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @SOCK_MAX, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %26
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %147

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @PF_INET, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @SOCK_PACKET, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pr_info_once(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @PF_PACKET, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %44, %40, %36
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @security_socket_create(i32 %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %7, align 4
  br label %147

60:                                               ; preds = %50
  %61 = call %struct.socket* (...) @sock_alloc()
  store %struct.socket* %61, %struct.socket** %15, align 8
  %62 = load %struct.socket*, %struct.socket** %15, align 8
  %63 = icmp ne %struct.socket* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @ENFILE, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %147

68:                                               ; preds = %60
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.socket*, %struct.socket** %15, align 8
  %71 = getelementptr inbounds %struct.socket, %struct.socket* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = call i32 (...) @rcu_read_lock()
  %73 = load i32*, i32** @net_families, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.net_proto_family* @rcu_dereference(i32 %77)
  store %struct.net_proto_family* %78, %struct.net_proto_family** %16, align 8
  %79 = load i32, i32* @EAFNOSUPPORT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %14, align 4
  %81 = load %struct.net_proto_family*, %struct.net_proto_family** %16, align 8
  %82 = icmp ne %struct.net_proto_family* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %68
  br label %145

84:                                               ; preds = %68
  %85 = load %struct.net_proto_family*, %struct.net_proto_family** %16, align 8
  %86 = getelementptr inbounds %struct.net_proto_family, %struct.net_proto_family* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @try_module_get(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  br label %145

91:                                               ; preds = %84
  %92 = call i32 (...) @rcu_read_unlock()
  %93 = load %struct.net_proto_family*, %struct.net_proto_family** %16, align 8
  %94 = getelementptr inbounds %struct.net_proto_family, %struct.net_proto_family* %93, i32 0, i32 0
  %95 = load i32 (%struct.net.0*, %struct.socket*, i32, i32)*, i32 (%struct.net.0*, %struct.socket*, i32, i32)** %94, align 8
  %96 = load %struct.net*, %struct.net** %8, align 8
  %97 = bitcast %struct.net* %96 to %struct.net.0*
  %98 = load %struct.socket*, %struct.socket** %15, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 %95(%struct.net.0* %97, %struct.socket* %98, i32 %99, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %134

105:                                              ; preds = %91
  %106 = load %struct.socket*, %struct.socket** %15, align 8
  %107 = getelementptr inbounds %struct.socket, %struct.socket* %106, i32 0, i32 1
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @try_module_get(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %105
  br label %131

114:                                              ; preds = %105
  %115 = load %struct.net_proto_family*, %struct.net_proto_family** %16, align 8
  %116 = getelementptr inbounds %struct.net_proto_family, %struct.net_proto_family* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @module_put(i32 %117)
  %119 = load %struct.socket*, %struct.socket** %15, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @security_socket_post_create(%struct.socket* %119, i32 %120, i32 %121, i32 %122, i32 %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %114
  br label %141

128:                                              ; preds = %114
  %129 = load %struct.socket*, %struct.socket** %15, align 8
  %130 = load %struct.socket**, %struct.socket*** %12, align 8
  store %struct.socket* %129, %struct.socket** %130, align 8
  store i32 0, i32* %7, align 4
  br label %147

131:                                              ; preds = %113
  %132 = load i32, i32* @EAFNOSUPPORT, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %131, %104
  %135 = load %struct.socket*, %struct.socket** %15, align 8
  %136 = getelementptr inbounds %struct.socket, %struct.socket* %135, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %136, align 8
  %137 = load %struct.net_proto_family*, %struct.net_proto_family** %16, align 8
  %138 = getelementptr inbounds %struct.net_proto_family, %struct.net_proto_family* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @module_put(i32 %139)
  br label %141

141:                                              ; preds = %145, %134, %127
  %142 = load %struct.socket*, %struct.socket** %15, align 8
  %143 = call i32 @sock_release(%struct.socket* %142)
  %144 = load i32, i32* %14, align 4
  store i32 %144, i32* %7, align 4
  br label %147

145:                                              ; preds = %90, %83
  %146 = call i32 (...) @rcu_read_unlock()
  br label %141

147:                                              ; preds = %141, %128, %64, %58, %33, %23
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i32 @pr_info_once(i8*, i32) #1

declare dso_local i32 @security_socket_create(i32, i32, i32, i32) #1

declare dso_local %struct.socket* @sock_alloc(...) #1

declare dso_local i32 @net_warn_ratelimited(i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_proto_family* @rcu_dereference(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @security_socket_post_create(%struct.socket*, i32, i32, i32, i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
