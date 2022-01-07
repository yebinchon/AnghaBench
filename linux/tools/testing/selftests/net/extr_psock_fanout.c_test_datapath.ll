; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_fanout.c_test_datapath.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_fanout.c_test_datapath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"\0Atest: datapath 0x%hx ports %hu,%hu\0A\00", align 1
@PORT_BASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"ERROR: failed open\0A\00", align 1
@PACKET_FANOUT_CBPF = common dso_local global i64 0, align 8
@PACKET_FANOUT_EBPF = common dso_local global i64 0, align 8
@DATA_CHAR_1 = common dso_local global i32 0, align 4
@RING_NUM_FRAMES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"close rings\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"close datapath\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @test_datapath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_datapath(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i8*], align 16
  %11 = alloca i64, align 8
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x [2 x i32]], align 16
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 255
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %11, align 8
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i64, i64* @PORT_BASE, align 8
  %22 = load i64, i64* @PORT_BASE, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %21, i64 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @sock_fanout_open(i32 %27, i32 0)
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @sock_fanout_open(i32 %30, i32 0)
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %40, label %36

36:                                               ; preds = %4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %4
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @exit(i32 1) #4
  unreachable

44:                                               ; preds = %36
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @PACKET_FANOUT_CBPF, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sock_fanout_set_cbpf(i32 %50)
  br label %61

52:                                               ; preds = %44
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @PACKET_FANOUT_EBPF, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sock_fanout_set_ebpf(i32 %58)
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %48
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @sock_fanout_open_ring(i32 %63)
  %65 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  store i8* %64, i8** %65, align 16
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @sock_fanout_open_ring(i32 %67)
  %69 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1
  store i8* %68, i8** %69, align 8
  %70 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %13, i64 0, i64 0
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %70, i64 0, i64 0
  %72 = load i64, i64* @PORT_BASE, align 8
  %73 = call i32 @pair_udp_open(i32* %71, i64 %72)
  %74 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %13, i64 0, i64 1
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %74, i64 0, i64 0
  %76 = load i64, i64* @PORT_BASE, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = call i32 @pair_udp_open(i32* %75, i64 %79)
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %82 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %84 = call i32 @sock_fanout_read(i32* %81, i8** %82, i32* %83)
  %85 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %13, i64 0, i64 0
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %85, i64 0, i64 0
  %87 = call i32 @pair_udp_send(i32* %86, i32 15)
  %88 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %13, i64 0, i64 1
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %88, i64 0, i64 0
  %90 = load i32, i32* @DATA_CHAR_1, align 4
  %91 = call i32 @pair_udp_send_char(i32* %89, i32 5, i32 %90)
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %93 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @sock_fanout_read(i32* %92, i8** %93, i32* %94)
  store i32 %95, i32* %14, align 4
  %96 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %13, i64 0, i64 0
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %96, i64 0, i64 0
  %98 = load i32, i32* @DATA_CHAR_1, align 4
  %99 = call i32 @pair_udp_send_char(i32* %97, i32 15, i32 %98)
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %101 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @sock_fanout_read(i32* %100, i8** %101, i32* %102)
  %104 = load i32, i32* %14, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %14, align 4
  %106 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* @RING_NUM_FRAMES, align 4
  %109 = call i32 (...) @getpagesize()
  %110 = mul nsw i32 %108, %109
  %111 = call i64 @munmap(i8* %107, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %61
  %114 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %115 = load i8*, i8** %114, align 16
  %116 = load i32, i32* @RING_NUM_FRAMES, align 4
  %117 = call i32 (...) @getpagesize()
  %118 = mul nsw i32 %116, %117
  %119 = call i64 @munmap(i8* %115, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %113, %61
  %122 = load i32, i32* @stderr, align 4
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %124 = call i32 @exit(i32 1) #4
  unreachable

125:                                              ; preds = %113
  %126 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %13, i64 0, i64 1
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %126, i64 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @close(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %159, label %131

131:                                              ; preds = %125
  %132 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %13, i64 0, i64 1
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %132, i64 0, i64 0
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @close(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %159, label %137

137:                                              ; preds = %131
  %138 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %13, i64 0, i64 0
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %138, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @close(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %159, label %143

143:                                              ; preds = %137
  %144 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %13, i64 0, i64 0
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %144, i64 0, i64 0
  %146 = load i32, i32* %145, align 16
  %147 = call i64 @close(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %159, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @close(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @close(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154, %149, %143, %137, %131, %125
  %160 = load i32, i32* @stderr, align 4
  %161 = call i32 (i32, i8*, ...) @fprintf(i32 %160, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %162 = call i32 @exit(i32 1) #4
  unreachable

163:                                              ; preds = %154
  %164 = load i32, i32* %14, align 4
  ret i32 %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @sock_fanout_open(i32, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @sock_fanout_set_cbpf(i32) #2

declare dso_local i32 @sock_fanout_set_ebpf(i32) #2

declare dso_local i8* @sock_fanout_open_ring(i32) #2

declare dso_local i32 @pair_udp_open(i32*, i64) #2

declare dso_local i32 @sock_fanout_read(i32*, i8**, i32*) #2

declare dso_local i32 @pair_udp_send(i32*, i32) #2

declare dso_local i32 @pair_udp_send_char(i32*, i32, i32) #2

declare dso_local i64 @munmap(i8*, i32) #2

declare dso_local i32 @getpagesize(...) #2

declare dso_local i64 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
