; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_bpf_dump_curr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_bpf_dump_curr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_regs = type { i32, i64*, i32, i64, i32, i32 }
%struct.sock_filter = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"pc:       [%u]\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"code:     [%u] jt[%u] jf[%u] k[%u]\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"curr:     \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"jt:       \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"jf:       \00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"A:        [%#08x][%u]\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"X:        [%#08x][%u]\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"ret:      [%#08x][%u]!\0A\00", align 1
@BPF_MEMWORDS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"M[%d]: [%#08x][%u]\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"M[0,%d]:  [%#08x][%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_regs*, %struct.sock_filter*)* @bpf_dump_curr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_dump_curr(%struct.bpf_regs* %0, %struct.sock_filter* %1) #0 {
  %3 = alloca %struct.bpf_regs*, align 8
  %4 = alloca %struct.sock_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bpf_regs* %0, %struct.bpf_regs** %3, align 8
  store %struct.sock_filter* %1, %struct.sock_filter** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.bpf_regs*, %struct.bpf_regs** %3, align 8
  %8 = getelementptr inbounds %struct.bpf_regs, %struct.bpf_regs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (i8*, ...) @rl_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %12 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %15 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %18 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %21 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @rl_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %22)
  %24 = call i32 (i8*, ...) @rl_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %26 = load %struct.bpf_regs*, %struct.bpf_regs** %3, align 8
  %27 = getelementptr inbounds %struct.bpf_regs, %struct.bpf_regs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = bitcast %struct.sock_filter* %25 to { i64, i64 }*
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 4
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 4
  %34 = call i32 @bpf_disasm(i64 %31, i64 %33, i32 %28)
  %35 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %36 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %2
  %40 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %41 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %89

44:                                               ; preds = %39, %2
  %45 = call i32 (i8*, ...) @rl_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %47 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %48 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %46, i64 %50
  %52 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %51, i64 1
  %53 = load %struct.bpf_regs*, %struct.bpf_regs** %3, align 8
  %54 = getelementptr inbounds %struct.bpf_regs, %struct.bpf_regs* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %57 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %55, %58
  %60 = add nsw i32 %59, 1
  %61 = bitcast %struct.sock_filter* %52 to { i64, i64 }*
  %62 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 4
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 1
  %65 = load i64, i64* %64, align 4
  %66 = call i32 @bpf_disasm(i64 %63, i64 %65, i32 %60)
  %67 = call i32 (i8*, ...) @rl_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %68 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %69 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %70 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %68, i64 %72
  %74 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %73, i64 1
  %75 = load %struct.bpf_regs*, %struct.bpf_regs** %3, align 8
  %76 = getelementptr inbounds %struct.bpf_regs, %struct.bpf_regs* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.sock_filter*, %struct.sock_filter** %4, align 8
  %79 = getelementptr inbounds %struct.sock_filter, %struct.sock_filter* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  %82 = add nsw i32 %81, 1
  %83 = bitcast %struct.sock_filter* %74 to { i64, i64 }*
  %84 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 4
  %86 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %83, i32 0, i32 1
  %87 = load i64, i64* %86, align 4
  %88 = call i32 @bpf_disasm(i64 %85, i64 %87, i32 %82)
  br label %89

89:                                               ; preds = %44, %39
  %90 = load %struct.bpf_regs*, %struct.bpf_regs** %3, align 8
  %91 = getelementptr inbounds %struct.bpf_regs, %struct.bpf_regs* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.bpf_regs*, %struct.bpf_regs** %3, align 8
  %94 = getelementptr inbounds %struct.bpf_regs, %struct.bpf_regs* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, ...) @rl_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %92, i32 %95)
  %97 = load %struct.bpf_regs*, %struct.bpf_regs** %3, align 8
  %98 = getelementptr inbounds %struct.bpf_regs, %struct.bpf_regs* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.bpf_regs*, %struct.bpf_regs** %3, align 8
  %101 = getelementptr inbounds %struct.bpf_regs, %struct.bpf_regs* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i8*, ...) @rl_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %99, i32 %102)
  %104 = load %struct.bpf_regs*, %struct.bpf_regs** %3, align 8
  %105 = getelementptr inbounds %struct.bpf_regs, %struct.bpf_regs* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %89
  %109 = load %struct.bpf_regs*, %struct.bpf_regs** %3, align 8
  %110 = getelementptr inbounds %struct.bpf_regs, %struct.bpf_regs* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.bpf_regs*, %struct.bpf_regs** %3, align 8
  %113 = getelementptr inbounds %struct.bpf_regs, %struct.bpf_regs* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i8*, ...) @rl_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %108, %89
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %150, %116
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @BPF_MEMWORDS, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %153

121:                                              ; preds = %117
  %122 = load %struct.bpf_regs*, %struct.bpf_regs** %3, align 8
  %123 = getelementptr inbounds %struct.bpf_regs, %struct.bpf_regs* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %149

130:                                              ; preds = %121
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.bpf_regs*, %struct.bpf_regs** %3, align 8
  %135 = getelementptr inbounds %struct.bpf_regs, %struct.bpf_regs* %134, i32 0, i32 1
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.bpf_regs*, %struct.bpf_regs** %3, align 8
  %142 = getelementptr inbounds %struct.bpf_regs, %struct.bpf_regs* %141, i32 0, i32 1
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i64, i64* %143, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (i8*, ...) @rl_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %133, i64 %140, i64 %147)
  br label %149

149:                                              ; preds = %130, %121
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %117

153:                                              ; preds = %117
  %154 = load i32, i32* %6, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* @BPF_MEMWORDS, align 4
  %158 = sub nsw i32 %157, 1
  %159 = call i32 (i8*, ...) @rl_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %158, i32 0, i32 0)
  br label %160

160:                                              ; preds = %156, %153
  ret void
}

declare dso_local i32 @rl_printf(i8*, ...) #1

declare dso_local i32 @bpf_disasm(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
