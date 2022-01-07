; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_lsock_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_nettest.c_lsock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_args = type { i64, i64, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Error opening socket\00", align 1
@SOCK_STREAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"listen failed\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to set non-blocking option\00", align 1
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to set close-on-exec flag\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_args*)* @lsock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsock_init(%struct.sock_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock_args*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.sock_args* %0, %struct.sock_args** %3, align 8
  %6 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %7 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %10 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %13 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @socket(i32 %8, i64 %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @log_err_errno(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %114

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @set_reuseaddr(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %111

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @set_reuseport(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %111

30:                                               ; preds = %25
  %31 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %32 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %38 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @bind_to_device(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %111

43:                                               ; preds = %35, %30
  %44 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %45 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %51 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %54 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @set_unicast_if(i32 %49, i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %111

59:                                               ; preds = %48, %43
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %63 = call i64 @bind_socket(i32 %61, %struct.sock_args* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %111

66:                                               ; preds = %60
  %67 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %68 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %109

72:                                               ; preds = %66
  %73 = load %struct.sock_args*, %struct.sock_args** %3, align 8
  %74 = getelementptr inbounds %struct.sock_args, %struct.sock_args* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SOCK_STREAM, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @listen(i32 %79, i32 1)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 @log_err_errno(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %111

84:                                               ; preds = %78, %72
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @F_GETFL, align 4
  %87 = call i64 (i32, i32, ...) @fcntl(i32 %85, i32 %86)
  store i64 %87, i64* %4, align 8
  %88 = load i64, i64* %4, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @F_SETFL, align 4
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* @O_NONBLOCK, align 8
  %95 = or i64 %93, %94
  %96 = call i64 (i32, i32, ...) @fcntl(i32 %91, i32 %92, i64 %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90, %84
  %99 = call i32 @log_err_errno(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %111

100:                                              ; preds = %90
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @F_SETFD, align 4
  %103 = load i64, i64* @FD_CLOEXEC, align 8
  %104 = call i64 (i32, i32, ...) @fcntl(i32 %101, i32 %102, i64 %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = call i32 @log_err_errno(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %100
  br label %109

109:                                              ; preds = %108, %71
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %114

111:                                              ; preds = %98, %82, %65, %58, %42, %29, %24
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @close(i32 %112)
  store i32 -1, i32* %2, align 4
  br label %114

114:                                              ; preds = %111, %109, %18
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @socket(i32, i64, i32) #1

declare dso_local i32 @log_err_errno(i8*) #1

declare dso_local i64 @set_reuseaddr(i32) #1

declare dso_local i64 @set_reuseport(i32) #1

declare dso_local i64 @bind_to_device(i32, i32) #1

declare dso_local i64 @set_unicast_if(i32, i32, i32) #1

declare dso_local i64 @bind_socket(i32, %struct.sock_args*) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i64 @fcntl(i32, i32, ...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
