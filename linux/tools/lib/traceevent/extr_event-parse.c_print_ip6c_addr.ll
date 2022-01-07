; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_print_ip6c_addr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_print_ip6c_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.in6_addr = type { i64*, i32* }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%x%02x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_seq*, i8*)* @print_ip6c_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ip6c_addr(%struct.trace_seq* %0, i8* %1) #0 {
  %3 = alloca %struct.trace_seq*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.in6_addr, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @memcpy(%struct.in6_addr* %16, i8* %17, i32 16)
  %19 = call i64 @ipv6_addr_v4mapped(%struct.in6_addr* %16)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = call i64 @ipv6_addr_is_isatap(%struct.in6_addr* %16)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %21, %2
  %25 = phi i1 [ true, %2 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %28 = call i32 @memset(i8* %27, i32 0, i32 8)
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 6, i32* %7, align 4
  br label %33

32:                                               ; preds = %24
  store i32 8, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %31
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %63, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %59, %38
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %16, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %62

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = add i8 %57, 1
  store i8 %58, i8* %56, align 1
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %40

62:                                               ; preds = %52, %40
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %34

66:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %87, %66
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i32, i32* %9, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %79, %71
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %67

90:                                               ; preds = %67
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 -1, i32* %10, align 4
  br label %94

94:                                               ; preds = %93, %90
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %149, %94
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %152

99:                                               ; preds = %95
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %99
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %5, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106, %103
  %110 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %111 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %106
  %113 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %114 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  %115 = load i32, i32* %9, align 4
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %5, align 4
  br label %149

119:                                              ; preds = %99
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %124 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %125

125:                                              ; preds = %122, %119
  %126 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %16, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @ntohs(i64 %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = ashr i32 %133, 8
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %11, align 4
  %136 = and i32 %135, 255
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %125
  %140 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %13, align 4
  %143 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %141, i32 %142)
  br label %148

144:                                              ; preds = %125
  %145 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %144, %139
  store i32 1, i32* %14, align 4
  br label %149

149:                                              ; preds = %148, %112
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %95

152:                                              ; preds = %95
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %167

155:                                              ; preds = %152
  %156 = load i32, i32* %14, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %160 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %161

161:                                              ; preds = %158, %155
  %162 = load %struct.trace_seq*, %struct.trace_seq** %3, align 8
  %163 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %16, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 12
  %166 = call i32 @print_ip4_addr(%struct.trace_seq* %162, i8 signext 73, i32* %165)
  br label %167

167:                                              ; preds = %161, %152
  ret void
}

declare dso_local i32 @memcpy(%struct.in6_addr*, i8*, i32) #1

declare dso_local i64 @ipv6_addr_v4mapped(%struct.in6_addr*) #1

declare dso_local i64 @ipv6_addr_is_isatap(%struct.in6_addr*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @print_ip4_addr(%struct.trace_seq*, i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
