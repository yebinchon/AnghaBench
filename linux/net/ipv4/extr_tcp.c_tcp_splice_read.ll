; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_splice_read.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_tcp_splice_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__*, %struct.sock* }
%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32, i64, i64, i32 }
%struct.pipe_inode_info = type { i32 }
%struct.tcp_splice_state = type { i64, i32, %struct.pipe_inode_info* }

@ESPIPE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_splice_read(%struct.socket* %0, i32* %1, %struct.pipe_inode_info* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pipe_inode_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.tcp_splice_state, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.pipe_inode_info* %2, %struct.pipe_inode_info** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.socket*, %struct.socket** %7, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 1
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %12, align 8
  %20 = getelementptr inbounds %struct.tcp_splice_state, %struct.tcp_splice_state* %13, i32 0, i32 0
  %21 = load i64, i64* %10, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds %struct.tcp_splice_state, %struct.tcp_splice_state* %13, i32 0, i32 1
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.tcp_splice_state, %struct.tcp_splice_state* %13, i32 0, i32 2
  %25 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %9, align 8
  store %struct.pipe_inode_info* %25, %struct.pipe_inode_info** %24, align 8
  %26 = load %struct.sock*, %struct.sock** %12, align 8
  %27 = call i32 @sock_rps_record_flow(%struct.sock* %26)
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load i32, i32* @ESPIPE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %167

35:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %36 = load %struct.sock*, %struct.sock** %12, align 8
  %37 = call i32 @lock_sock(%struct.sock* %36)
  %38 = load %struct.sock*, %struct.sock** %12, align 8
  %39 = load %struct.socket*, %struct.socket** %7, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @O_NONBLOCK, align 4
  %45 = and i32 %43, %44
  %46 = call i64 @sock_rcvtimeo(%struct.sock* %38, i32 %45)
  store i64 %46, i64* %14, align 8
  br label %47

47:                                               ; preds = %157, %116, %35
  %48 = getelementptr inbounds %struct.tcp_splice_state, %struct.tcp_splice_state* %13, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %158

51:                                               ; preds = %47
  %52 = load %struct.sock*, %struct.sock** %12, align 8
  %53 = call i32 @__tcp_splice_read(%struct.sock* %52, %struct.tcp_splice_state* %13)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %158

57:                                               ; preds = %51
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %117, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %158

64:                                               ; preds = %60
  %65 = load %struct.sock*, %struct.sock** %12, align 8
  %66 = load i32, i32* @SOCK_DONE, align 4
  %67 = call i64 @sock_flag(%struct.sock* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %158

70:                                               ; preds = %64
  %71 = load %struct.sock*, %struct.sock** %12, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.sock*, %struct.sock** %12, align 8
  %77 = call i32 @sock_error(%struct.sock* %76)
  store i32 %77, i32* %16, align 4
  br label %158

78:                                               ; preds = %70
  %79 = load %struct.sock*, %struct.sock** %12, align 8
  %80 = getelementptr inbounds %struct.sock, %struct.sock* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @RCV_SHUTDOWN, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %158

86:                                               ; preds = %78
  %87 = load %struct.sock*, %struct.sock** %12, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @TCP_CLOSE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* @ENOTCONN, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %16, align 4
  br label %158

95:                                               ; preds = %86
  %96 = load i64, i64* %14, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* @EAGAIN, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %16, align 4
  br label %158

101:                                              ; preds = %95
  %102 = load %struct.sock*, %struct.sock** %12, align 8
  %103 = getelementptr inbounds %struct.sock, %struct.sock* %102, i32 0, i32 3
  %104 = call i32 @skb_queue_empty(i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  br label %158

107:                                              ; preds = %101
  %108 = load %struct.sock*, %struct.sock** %12, align 8
  %109 = call i32 @sk_wait_data(%struct.sock* %108, i64* %14, i32* null)
  %110 = load i32, i32* @current, align 4
  %111 = call i64 @signal_pending(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i64, i64* %14, align 8
  %115 = call i32 @sock_intr_errno(i64 %114)
  store i32 %115, i32* %16, align 4
  br label %158

116:                                              ; preds = %107
  br label %47

117:                                              ; preds = %57
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %16, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.tcp_splice_state, %struct.tcp_splice_state* %13, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = sub i64 %122, %120
  store i64 %123, i64* %121, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %15, align 4
  %127 = load i64, i64* %14, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %118
  br label %158

130:                                              ; preds = %118
  %131 = load %struct.sock*, %struct.sock** %12, align 8
  %132 = call i32 @release_sock(%struct.sock* %131)
  %133 = load %struct.sock*, %struct.sock** %12, align 8
  %134 = call i32 @lock_sock(%struct.sock* %133)
  %135 = load %struct.sock*, %struct.sock** %12, align 8
  %136 = getelementptr inbounds %struct.sock, %struct.sock* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %156, label %139

139:                                              ; preds = %130
  %140 = load %struct.sock*, %struct.sock** %12, align 8
  %141 = getelementptr inbounds %struct.sock, %struct.sock* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @TCP_CLOSE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %156, label %145

145:                                              ; preds = %139
  %146 = load %struct.sock*, %struct.sock** %12, align 8
  %147 = getelementptr inbounds %struct.sock, %struct.sock* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @RCV_SHUTDOWN, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %145
  %153 = load i32, i32* @current, align 4
  %154 = call i64 @signal_pending(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %152, %145, %139, %130
  br label %158

157:                                              ; preds = %152
  br label %47

158:                                              ; preds = %156, %129, %113, %106, %98, %92, %85, %75, %69, %63, %56, %47
  %159 = load %struct.sock*, %struct.sock** %12, align 8
  %160 = call i32 @release_sock(%struct.sock* %159)
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i32, i32* %15, align 4
  store i32 %164, i32* %6, align 4
  br label %167

165:                                              ; preds = %158
  %166 = load i32, i32* %16, align 4
  store i32 %166, i32* %6, align 4
  br label %167

167:                                              ; preds = %165, %163, %32
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local i32 @sock_rps_record_flow(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @__tcp_splice_read(%struct.sock*, %struct.tcp_splice_state*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @sk_wait_data(%struct.sock*, i64*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
