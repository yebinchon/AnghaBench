; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_flow_dissector.c_do_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_flow_dissector.c_do_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfg_only_tx = common dso_local global i32 0, align 4
@cfg_only_rx = common dso_local global i32 0, align 4
@cfg_num_secs = common dso_local global i32 0, align 4
@buf = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"pkts: tx=%u rx=%u\0A\00", align 1
@cfg_num_pkt = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"close rx\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"close tx\00", align 1
@cfg_expect_failure = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @do_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @cfg_only_tx, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %0
  %13 = call i32 (...) @setup_rx()
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %12, %0
  %15 = load i32, i32* @cfg_only_rx, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call i32 (...) @setup_tx()
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = call i32 (...) @build_packet()
  store i32 %20, i32* %7, align 4
  %21 = call i32 (...) @util_gettime()
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, 1000
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* @cfg_num_secs, align 4
  %27 = mul nsw i32 %26, 1000
  %28 = sext i32 %27 to i64
  %29 = add i64 %25, %28
  store i64 %29, i64* %2, align 8
  br label %30

30:                                               ; preds = %19, %80
  %31 = load i32, i32* @cfg_only_rx, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @buf, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @do_tx(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %33, %30
  %43 = load i32, i32* @cfg_only_tx, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @do_rx(i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %45, %42
  %53 = load i32, i32* @cfg_num_secs, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = call i32 (...) @util_gettime()
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* %2, align 8
  %60 = icmp uge i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %81

62:                                               ; preds = %55
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %3, align 8
  %65 = icmp uge i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* @stderr, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @fprintf(i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %71 = load i64, i64* %4, align 8
  %72 = add i64 %71, 1000
  store i64 %72, i64* %3, align 8
  br label %73

73:                                               ; preds = %66, %62
  br label %80

74:                                               ; preds = %52
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @cfg_num_pkt, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %81

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %73
  br label %30

81:                                               ; preds = %78, %61
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %114

85:                                               ; preds = %81
  %86 = call i32 (...) @util_gettime()
  %87 = add nsw i32 %86, 100
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %2, align 8
  br label %89

89:                                               ; preds = %100, %85
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %113

93:                                               ; preds = %89
  %94 = call i32 (...) @util_gettime()
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %4, align 8
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* %2, align 8
  %98 = icmp uge i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %113

100:                                              ; preds = %93
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @POLLIN, align 4
  %103 = load i64, i64* %2, align 8
  %104 = load i64, i64* %4, align 8
  %105 = sub i64 %103, %104
  %106 = call i32 @do_poll(i32 %101, i32 %102, i64 %105)
  %107 = load i32, i32* %6, align 4
  %108 = call i64 @do_rx(i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %9, align 4
  br label %89

113:                                              ; preds = %99, %89
  br label %114

114:                                              ; preds = %113, %81
  %115 = load i32, i32* @stderr, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @fprintf(i32 %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %117)
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, -1
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = load i32, i32* %6, align 4
  %123 = call i64 @close(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32, i32* @errno, align 4
  %127 = call i32 @error(i32 1, i32 %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %121, %114
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, -1
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load i32, i32* %5, align 4
  %133 = call i64 @close(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* @errno, align 4
  %137 = call i32 @error(i32 1, i32 %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %131, %128
  %139 = load i64, i64* @cfg_expect_failure, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %1, align 4
  br label %150

145:                                              ; preds = %138
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %146, %147
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %1, align 4
  br label %150

150:                                              ; preds = %145, %141
  %151 = load i32, i32* %1, align 4
  ret i32 %151
}

declare dso_local i32 @setup_rx(...) #1

declare dso_local i32 @setup_tx(...) #1

declare dso_local i32 @build_packet(...) #1

declare dso_local i32 @util_gettime(...) #1

declare dso_local i64 @do_tx(i32, i32, i32) #1

declare dso_local i64 @do_rx(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @do_poll(i32, i32, i64) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
