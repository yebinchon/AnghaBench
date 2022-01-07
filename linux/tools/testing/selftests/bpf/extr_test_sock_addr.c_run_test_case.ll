; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_run_test_case.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_run_test_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_addr_test = type { i8*, i32 (%struct.sock_addr_test*)*, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Test case: %s .. \00", align 1
@LOAD_REJECT = common dso_local global i64 0, align 8
@BPF_F_ALLOW_OVERRIDE = common dso_local global i32 0, align 4
@ATTACH_REJECT = common dso_local global i64 0, align 8
@ATTACH_OKAY = common dso_local global i64 0, align 8
@SYSCALL_EPERM = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@SYSCALL_ENOTSUPP = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sock_addr_test*)* @run_test_case to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test_case(i32 %0, %struct.sock_addr_test* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock_addr_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.sock_addr_test* %1, %struct.sock_addr_test** %4, align 8
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %8 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %12 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %11, i32 0, i32 1
  %13 = load i32 (%struct.sock_addr_test*)*, i32 (%struct.sock_addr_test*)** %12, align 8
  %14 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %15 = call i32 %13(%struct.sock_addr_test* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %17 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LOAD_REJECT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %123

25:                                               ; preds = %21, %2
  %26 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %27 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LOAD_REJECT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %25
  br label %122

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %40 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BPF_F_ALLOW_OVERRIDE, align 4
  %43 = call i32 @bpf_prog_attach(i32 %37, i32 %38, i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %45 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ATTACH_REJECT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %123

53:                                               ; preds = %49, %36
  %54 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %55 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ATTACH_REJECT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %53
  br label %122

63:                                               ; preds = %59
  %64 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %65 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ATTACH_OKAY, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %123

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %74 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %88 [
    i32 135, label %76
    i32 133, label %76
    i32 134, label %79
    i32 132, label %79
    i32 130, label %82
    i32 128, label %82
    i32 131, label %85
    i32 129, label %85
  ]

76:                                               ; preds = %72, %72
  %77 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %78 = call i32 @run_bind_test_case(%struct.sock_addr_test* %77)
  store i32 %78, i32* %6, align 4
  br label %89

79:                                               ; preds = %72, %72
  %80 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %81 = call i32 @run_connect_test_case(%struct.sock_addr_test* %80)
  store i32 %81, i32* %6, align 4
  br label %89

82:                                               ; preds = %72, %72
  %83 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %84 = call i32 @run_xmsg_test_case(%struct.sock_addr_test* %83, i32 1)
  store i32 %84, i32* %6, align 4
  br label %89

85:                                               ; preds = %72, %72
  %86 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %87 = call i32 @run_xmsg_test_case(%struct.sock_addr_test* %86, i32 0)
  store i32 %87, i32* %6, align 4
  br label %89

88:                                               ; preds = %72
  br label %122

89:                                               ; preds = %85, %82, %79, %76
  %90 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %91 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SYSCALL_EPERM, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @EPERM, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 0, i32* %6, align 4
  br label %123

100:                                              ; preds = %95, %89
  %101 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %102 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SYSCALL_ENOTSUPP, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @ENOTSUPP, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %123

111:                                              ; preds = %106, %100
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %116 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SUCCESS, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114, %111
  br label %122

121:                                              ; preds = %114
  br label %123

122:                                              ; preds = %120, %88, %62, %34
  store i32 -1, i32* %6, align 4
  br label %123

123:                                              ; preds = %122, %121, %110, %99, %69, %52, %24
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, -1
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i32, i32* %3, align 4
  %128 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %129 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @bpf_prog_detach(i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %126, %123
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @close(i32 %133)
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %139 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %138)
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @bpf_prog_attach(i32, i32, i32, i32) #1

declare dso_local i32 @run_bind_test_case(%struct.sock_addr_test*) #1

declare dso_local i32 @run_connect_test_case(%struct.sock_addr_test*) #1

declare dso_local i32 @run_xmsg_test_case(%struct.sock_addr_test*, i32) #1

declare dso_local i32 @bpf_prog_detach(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
