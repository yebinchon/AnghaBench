; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_dualstack.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_dualstack.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"---- UDP IPv4 created before IPv6 ----\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"---- UDP IPv6 created before IPv4 ----\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"---- UDP IPv4 created before IPv6 (large) ----\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"---- UDP IPv6 created before IPv4 (large) ----\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"---- TCP IPv4 created before IPv6 ----\0A\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"---- TCP IPv6 created before IPv4 ----\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"SUCCESS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i32], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 @fprintf(i32 %4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @AF_INET, align 4
  %7 = load i32, i32* @SOCK_DGRAM, align 4
  %8 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %9 = call i32 @build_rcv_fd(i32 %6, i32 %7, i32* %8, i32 5)
  %10 = load i32, i32* @AF_INET6, align 4
  %11 = load i32, i32* @SOCK_DGRAM, align 4
  %12 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 5
  %13 = call i32 @build_rcv_fd(i32 %10, i32 %11, i32* %12, i32 5)
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %15 = load i32, i32* @SOCK_DGRAM, align 4
  %16 = call i32 @test(i32* %14, i32 10, i32 %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %26, %0
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @close(i32 %24)
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %17

29:                                               ; preds = %17
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @AF_INET6, align 4
  %33 = load i32, i32* @SOCK_DGRAM, align 4
  %34 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %35 = call i32 @build_rcv_fd(i32 %32, i32 %33, i32* %34, i32 5)
  %36 = load i32, i32* @AF_INET, align 4
  %37 = load i32, i32* @SOCK_DGRAM, align 4
  %38 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 5
  %39 = call i32 @build_rcv_fd(i32 %36, i32 %37, i32* %38, i32 5)
  %40 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %41 = load i32, i32* @SOCK_DGRAM, align 4
  %42 = call i32 @test(i32* %40, i32 10, i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %52, %29
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 10
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @close(i32 %50)
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %43

55:                                               ; preds = %43
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @AF_INET, align 4
  %59 = load i32, i32* @SOCK_DGRAM, align 4
  %60 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %61 = call i32 @build_rcv_fd(i32 %58, i32 %59, i32* %60, i32 16)
  %62 = load i32, i32* @AF_INET6, align 4
  %63 = load i32, i32* @SOCK_DGRAM, align 4
  %64 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 16
  %65 = call i32 @build_rcv_fd(i32 %62, i32 %63, i32* %64, i32 16)
  %66 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %67 = load i32, i32* @SOCK_DGRAM, align 4
  %68 = call i32 @test(i32* %66, i32 32, i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %78, %55
  %70 = load i32, i32* %3, align 4
  %71 = icmp slt i32 %70, 32
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @close(i32 %76)
  br label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %69

81:                                               ; preds = %69
  %82 = load i32, i32* @stderr, align 4
  %83 = call i32 @fprintf(i32 %82, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @AF_INET6, align 4
  %85 = load i32, i32* @SOCK_DGRAM, align 4
  %86 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %87 = call i32 @build_rcv_fd(i32 %84, i32 %85, i32* %86, i32 16)
  %88 = load i32, i32* @AF_INET, align 4
  %89 = load i32, i32* @SOCK_DGRAM, align 4
  %90 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 16
  %91 = call i32 @build_rcv_fd(i32 %88, i32 %89, i32* %90, i32 16)
  %92 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %93 = load i32, i32* @SOCK_DGRAM, align 4
  %94 = call i32 @test(i32* %92, i32 32, i32 %93)
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %104, %81
  %96 = load i32, i32* %3, align 4
  %97 = icmp slt i32 %96, 32
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @close(i32 %102)
  br label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %3, align 4
  br label %95

107:                                              ; preds = %95
  %108 = load i32, i32* @stderr, align 4
  %109 = call i32 @fprintf(i32 %108, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %110 = load i32, i32* @AF_INET, align 4
  %111 = load i32, i32* @SOCK_STREAM, align 4
  %112 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %113 = call i32 @build_rcv_fd(i32 %110, i32 %111, i32* %112, i32 5)
  %114 = load i32, i32* @AF_INET6, align 4
  %115 = load i32, i32* @SOCK_STREAM, align 4
  %116 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 5
  %117 = call i32 @build_rcv_fd(i32 %114, i32 %115, i32* %116, i32 5)
  %118 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %119 = load i32, i32* @SOCK_STREAM, align 4
  %120 = call i32 @test(i32* %118, i32 10, i32 %119)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %130, %107
  %122 = load i32, i32* %3, align 4
  %123 = icmp slt i32 %122, 10
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @close(i32 %128)
  br label %130

130:                                              ; preds = %124
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %3, align 4
  br label %121

133:                                              ; preds = %121
  %134 = load i32, i32* @stderr, align 4
  %135 = call i32 @fprintf(i32 %134, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %136 = load i32, i32* @AF_INET6, align 4
  %137 = load i32, i32* @SOCK_STREAM, align 4
  %138 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %139 = call i32 @build_rcv_fd(i32 %136, i32 %137, i32* %138, i32 5)
  %140 = load i32, i32* @AF_INET, align 4
  %141 = load i32, i32* @SOCK_STREAM, align 4
  %142 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 5
  %143 = call i32 @build_rcv_fd(i32 %140, i32 %141, i32* %142, i32 5)
  %144 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 0
  %145 = load i32, i32* @SOCK_STREAM, align 4
  %146 = call i32 @test(i32* %144, i32 10, i32 %145)
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %156, %133
  %148 = load i32, i32* %3, align 4
  %149 = icmp slt i32 %148, 10
  br i1 %149, label %150, label %159

150:                                              ; preds = %147
  %151 = load i32, i32* %3, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [32 x i32], [32 x i32]* %2, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @close(i32 %154)
  br label %156

156:                                              ; preds = %150
  %157 = load i32, i32* %3, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %3, align 4
  br label %147

159:                                              ; preds = %147
  %160 = load i32, i32* @stderr, align 4
  %161 = call i32 @fprintf(i32 %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @build_rcv_fd(i32, i32, i32*, i32) #1

declare dso_local i32 @test(i32*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
