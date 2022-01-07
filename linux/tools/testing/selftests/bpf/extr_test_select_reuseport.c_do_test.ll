; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_select_reuseport.c_do_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_select_reuseport.c_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32, i32 }
%struct.epoll_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@epfd = common dso_local global i32 0, align 4
@PASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"nev <> expected\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"nev:%d expected:%d type:%d family:%d data:(%d, %d)\0A\00", align 1
@PASS_ERR_SK_SELECT_REUSEPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"check cmd->reuseport_index\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"cmd:(%u, %u) ev.data.u32:%u\0A\00", align 1
@sk_fds = common dso_local global i32* null, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"accept(srv_fd)\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"ev.data.u32:%u new_fd:%d errno:%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"recv(new_fd)\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"ev.data.u32:%u nread:%zd sizeof(rcv_cmd):%zu errno:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"recv(sk_fds)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.cmd*, i32)* @do_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_test(i32 %0, i32 %1, %struct.cmd* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.epoll_event, align 4
  %13 = alloca %struct.cmd, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.cmd* %2, %struct.cmd** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.cmd*, %struct.cmd** %7, align 8
  %19 = load %struct.cmd*, %struct.cmd** %7, align 8
  %20 = icmp ne %struct.cmd* %19, null
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i64 8, i64 0
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @send_data(i32 %16, i32 %17, %struct.cmd* %18, i32 %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* @epfd, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @PASS, align 4
  %29 = icmp uge i32 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 5, i32 0
  %32 = call i32 @epoll_wait(i32 %26, %struct.epoll_event* %12, i32 1, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PASS, align 4
  %38 = icmp uge i32 %36, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %35, %4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @PASS, align 4
  %45 = icmp ult i32 %43, %44
  br label %46

46:                                               ; preds = %42, %39
  %47 = phi i1 [ false, %39 ], [ %45, %42 ]
  br label %48

48:                                               ; preds = %46, %35
  %49 = phi i1 [ true, %35 ], [ %47, %46 ]
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.cmd*, %struct.cmd** %7, align 8
  %57 = icmp ne %struct.cmd* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %48
  %59 = load %struct.cmd*, %struct.cmd** %7, align 8
  %60 = getelementptr inbounds %struct.cmd, %struct.cmd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  br label %63

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62, %58
  %64 = phi i32 [ %61, %58 ], [ -1, %62 ]
  %65 = load %struct.cmd*, %struct.cmd** %7, align 8
  %66 = icmp ne %struct.cmd* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.cmd*, %struct.cmd** %7, align 8
  %69 = getelementptr inbounds %struct.cmd, %struct.cmd* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  br label %72

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %67
  %73 = phi i32 [ %70, %67 ], [ -1, %71 ]
  %74 = call i32 (i32, i8*, i8*, i64, i32, i32, ...) @CHECK(i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %52, i32 %53, i32 %54, i32 %55, i32 %64, i32 %73)
  %75 = call i32 (...) @check_results()
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.cmd*, %struct.cmd** %7, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @check_data(i32 %76, i32 %77, %struct.cmd* %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @PASS, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %168

85:                                               ; preds = %72
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @PASS_ERR_SK_SELECT_REUSEPORT, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load %struct.cmd*, %struct.cmd** %7, align 8
  %91 = getelementptr inbounds %struct.cmd, %struct.cmd* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %12, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %92, %95
  br label %97

97:                                               ; preds = %89, %85
  %98 = phi i1 [ false, %85 ], [ %96, %89 ]
  %99 = zext i1 %98 to i32
  %100 = load %struct.cmd*, %struct.cmd** %7, align 8
  %101 = getelementptr inbounds %struct.cmd, %struct.cmd* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.cmd*, %struct.cmd** %7, align 8
  %105 = getelementptr inbounds %struct.cmd, %struct.cmd* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %12, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i8*, i8*, i64, i32, i32, ...) @CHECK(i32 %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %103, i32 %106, i32 %109)
  %111 = load i32*, i32** @sk_fds, align 8
  %112 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %12, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @SOCK_STREAM, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %150

121:                                              ; preds = %97
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @accept(i32 %122, i32* null, i32 0)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp eq i32 %124, -1
  %126 = zext i1 %125 to i32
  %127 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %12, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @errno, align 4
  %133 = call i32 (i32, i8*, i8*, i64, i32, i32, ...) @CHECK(i32 %126, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %130, i32 %131, i32 %132)
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* @MSG_DONTWAIT, align 4
  %136 = call i32 @recv(i32 %134, %struct.cmd* %13, i32 8, i32 %135)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = icmp ne i64 %138, 8
  %140 = zext i1 %139 to i32
  %141 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %12, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* @errno, align 4
  %147 = call i32 (i32, i8*, i8*, i64, i32, i32, ...) @CHECK(i32 %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i64 %144, i32 %145, i32 8, i32 %146)
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @close(i32 %148)
  br label %165

150:                                              ; preds = %97
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @MSG_DONTWAIT, align 4
  %153 = call i32 @recv(i32 %151, %struct.cmd* %13, i32 8, i32 %152)
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = icmp ne i64 %155, 8
  %157 = zext i1 %156 to i32
  %158 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %12, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* @errno, align 4
  %164 = call i32 (i32, i8*, i8*, i64, i32, i32, ...) @CHECK(i32 %157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i64 %161, i32 %162, i32 8, i32 %163)
  br label %165

165:                                              ; preds = %150, %121
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @close(i32 %166)
  br label %168

168:                                              ; preds = %165, %84
  ret void
}

declare dso_local i32 @send_data(i32, i32, %struct.cmd*, i32, i32) #1

declare dso_local i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare dso_local i32 @CHECK(i32, i8*, i8*, i64, i32, i32, ...) #1

declare dso_local i32 @check_results(...) #1

declare dso_local i32 @check_data(i32, i32, %struct.cmd*, i32) #1

declare dso_local i32 @accept(i32, i32*, i32) #1

declare dso_local i32 @recv(i32, %struct.cmd*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
