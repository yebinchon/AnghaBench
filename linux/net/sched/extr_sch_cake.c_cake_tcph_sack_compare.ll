; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_tcph_sack_compare.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cake_tcph_sack_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i32 }
%struct.tcp_sack_block_wire = type { i32, i32 }

@TCPOPT_SACK = common dso_local global i32 0, align 4
@TCPOLEN_SACK_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcphdr*, %struct.tcphdr*)* @cake_tcph_sack_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cake_tcph_sack_compare(%struct.tcphdr* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca %struct.tcp_sack_block_wire*, align 8
  %7 = alloca %struct.tcp_sack_block_wire*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tcp_sack_block_wire*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.tcphdr* %0, %struct.tcphdr** %4, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %5, align 8
  %21 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %22 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ntohl(i32 %23)
  store i64 %24, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 1, i32* %13, align 4
  %25 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %26 = load i32, i32* @TCPOPT_SACK, align 4
  %27 = call %struct.tcp_sack_block_wire* @cake_get_tcpopt(%struct.tcphdr* %25, i32 %26, i32* %11)
  store %struct.tcp_sack_block_wire* %27, %struct.tcp_sack_block_wire** %6, align 8
  %28 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %29 = load i32, i32* @TCPOPT_SACK, align 4
  %30 = call %struct.tcp_sack_block_wire* @cake_get_tcpopt(%struct.tcphdr* %28, i32 %29, i32* %12)
  store %struct.tcp_sack_block_wire* %30, %struct.tcp_sack_block_wire** %7, align 8
  %31 = load i64, i64* @TCPOLEN_SACK_BASE, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = load i64, i64* @TCPOLEN_SACK_BASE, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %6, align 8
  %42 = icmp ne %struct.tcp_sack_block_wire* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %2
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp uge i64 %45, 8
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %7, align 8
  %49 = icmp ne %struct.tcp_sack_block_wire* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %52, 8
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %47
  store i32 -1, i32* %3, align 4
  br label %170

55:                                               ; preds = %50, %43, %2
  %56 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %7, align 8
  %57 = icmp ne %struct.tcp_sack_block_wire* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp uge i64 %60, 8
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %6, align 8
  %64 = icmp ne %struct.tcp_sack_block_wire* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ult i64 %67, 8
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %62
  store i32 1, i32* %3, align 4
  br label %170

70:                                               ; preds = %65, %58, %55
  %71 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %6, align 8
  %72 = icmp ne %struct.tcp_sack_block_wire* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %75, 8
  br i1 %76, label %77, label %85

77:                                               ; preds = %73, %70
  %78 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %7, align 8
  %79 = icmp ne %struct.tcp_sack_block_wire* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp ult i64 %82, 8
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %77
  store i32 0, i32* %3, align 4
  br label %170

85:                                               ; preds = %80, %73
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %157, %87
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp uge i64 %90, 8
  br i1 %91, label %92, label %164

92:                                               ; preds = %88
  %93 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %7, align 8
  store %struct.tcp_sack_block_wire* %93, %struct.tcp_sack_block_wire** %14, align 8
  %94 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %6, align 8
  %95 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %94, i32 0, i32 1
  %96 = call i64 @get_unaligned_be32(i32* %95)
  store i64 %96, i64* %15, align 8
  %97 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %6, align 8
  %98 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %97, i32 0, i32 0
  %99 = call i64 @get_unaligned_be32(i32* %98)
  store i64 %99, i64* %16, align 8
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i64 @before(i64 %101, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  store i32 -1, i32* %3, align 4
  br label %170

106:                                              ; preds = %92
  %107 = load i64, i64* %16, align 8
  %108 = load i64, i64* %15, align 8
  %109 = sub nsw i64 %107, %108
  %110 = load i64, i64* %9, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* %9, align 8
  br label %112

112:                                              ; preds = %146, %106
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp uge i64 %114, 8
  br i1 %115, label %116, label %153

116:                                              ; preds = %112
  %117 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %14, align 8
  %118 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %117, i32 0, i32 1
  %119 = call i64 @get_unaligned_be32(i32* %118)
  store i64 %119, i64* %19, align 8
  %120 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %14, align 8
  %121 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %120, i32 0, i32 0
  %122 = call i64 @get_unaligned_be32(i32* %121)
  store i64 %122, i64* %20, align 8
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %116
  %126 = load i64, i64* %20, align 8
  %127 = load i64, i64* %19, align 8
  %128 = sub nsw i64 %126, %127
  %129 = load i64, i64* %10, align 8
  %130 = add nsw i64 %129, %128
  store i64 %130, i64* %10, align 8
  br label %131

131:                                              ; preds = %125, %116
  %132 = load i64, i64* %19, align 8
  %133 = load i64, i64* %15, align 8
  %134 = call i32 @after(i64 %132, i64 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %146, label %136

136:                                              ; preds = %131
  %137 = load i64, i64* %20, align 8
  %138 = load i64, i64* %16, align 8
  %139 = call i64 @before(i64 %137, i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  store i32 1, i32* %18, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  br label %153

145:                                              ; preds = %141
  br label %146

146:                                              ; preds = %145, %136, %131
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = sub i64 %148, 8
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %17, align 4
  %151 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %14, align 8
  %152 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %151, i32 1
  store %struct.tcp_sack_block_wire* %152, %struct.tcp_sack_block_wire** %14, align 8
  br label %112

153:                                              ; preds = %144, %112
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  store i32 -1, i32* %3, align 4
  br label %170

157:                                              ; preds = %153
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = sub i64 %159, 8
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %11, align 4
  %162 = load %struct.tcp_sack_block_wire*, %struct.tcp_sack_block_wire** %6, align 8
  %163 = getelementptr inbounds %struct.tcp_sack_block_wire, %struct.tcp_sack_block_wire* %162, i32 1
  store %struct.tcp_sack_block_wire* %163, %struct.tcp_sack_block_wire** %6, align 8
  store i32 0, i32* %13, align 4
  br label %88

164:                                              ; preds = %88
  %165 = load i64, i64* %10, align 8
  %166 = load i64, i64* %9, align 8
  %167 = icmp sgt i64 %165, %166
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 1, i32 0
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %164, %156, %105, %84, %69, %54
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local %struct.tcp_sack_block_wire* @cake_get_tcpopt(%struct.tcphdr*, i32, i32*) #1

declare dso_local i64 @get_unaligned_be32(i32*) #1

declare dso_local i64 @before(i64, i64) #1

declare dso_local i32 @after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
