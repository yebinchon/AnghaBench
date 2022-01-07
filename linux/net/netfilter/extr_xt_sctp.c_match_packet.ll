; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_sctp.c_match_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_sctp.c_match_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_sctp_info = type { i32, i32, i32, %struct.xt_sctp_flag_info* }
%struct.xt_sctp_flag_info = type { i32 }
%struct.sctp_chunkhdr = type { i64, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Dropping invalid SCTP packet.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"skb->len: %d\09offset: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.xt_sctp_info*, i32*)* @match_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_packet(%struct.sk_buff* %0, i32 %1, %struct.xt_sctp_info* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xt_sctp_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [64 x i32], align 16
  %11 = alloca %struct.sctp_chunkhdr*, align 8
  %12 = alloca %struct.sctp_chunkhdr, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.xt_sctp_flag_info*, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xt_sctp_info* %2, %struct.xt_sctp_info** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %8, align 8
  %17 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %13, align 4
  %19 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %8, align 8
  %20 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %19, i32 0, i32 3
  %21 = load %struct.xt_sctp_flag_info*, %struct.xt_sctp_flag_info** %20, align 8
  store %struct.xt_sctp_flag_info* %21, %struct.xt_sctp_flag_info** %14, align 8
  %22 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %8, align 8
  %23 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp eq i32 %25, 130
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %29 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %8, align 8
  %30 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @SCTP_CHUNKMAP_COPY(i32* %28, i32 %31)
  br label %33

33:                                               ; preds = %27, %4
  br label %34

34:                                               ; preds = %123, %33
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.sctp_chunkhdr* @skb_header_pointer(%struct.sk_buff* %35, i32 %36, i32 16, %struct.sctp_chunkhdr* %12)
  store %struct.sctp_chunkhdr* %37, %struct.sctp_chunkhdr** %11, align 8
  %38 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %11, align 8
  %39 = icmp eq %struct.sctp_chunkhdr* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %11, align 8
  %42 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %34
  %46 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %47 = load i32*, i32** %9, align 8
  store i32 1, i32* %47, align 4
  store i32 0, i32* %5, align 4
  br label %137

48:                                               ; preds = %40
  %49 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %11, align 8
  %50 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @ntohs(i64 %51)
  %53 = call i64 @SCTP_PAD4(i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %7, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %8, align 8
  %64 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %11, align 8
  %67 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @SCTP_CHUNKMAP_IS_SET(i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %118

71:                                               ; preds = %48
  %72 = load i32, i32* %13, align 4
  switch i32 %72, label %117 [
    i32 129, label %73
    i32 130, label %86
    i32 128, label %104
  ]

73:                                               ; preds = %71
  %74 = load %struct.xt_sctp_flag_info*, %struct.xt_sctp_flag_info** %14, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %11, align 8
  %77 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %11, align 8
  %80 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @match_flags(%struct.xt_sctp_flag_info* %74, i32 %75, i32 %78, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  store i32 1, i32* %5, align 4
  br label %137

85:                                               ; preds = %73
  br label %117

86:                                               ; preds = %71
  %87 = load %struct.xt_sctp_flag_info*, %struct.xt_sctp_flag_info** %14, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %11, align 8
  %90 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %11, align 8
  %93 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @match_flags(%struct.xt_sctp_flag_info* %87, i32 %88, i32 %91, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %86
  %98 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %99 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %11, align 8
  %100 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @SCTP_CHUNKMAP_CLEAR(i32* %98, i32 %101)
  br label %103

103:                                              ; preds = %97, %86
  br label %117

104:                                              ; preds = %71
  %105 = load %struct.xt_sctp_flag_info*, %struct.xt_sctp_flag_info** %14, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %11, align 8
  %108 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %11, align 8
  %111 = getelementptr inbounds %struct.sctp_chunkhdr, %struct.sctp_chunkhdr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @match_flags(%struct.xt_sctp_flag_info* %105, i32 %106, i32 %109, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %137

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %71, %116, %103, %85
  br label %122

118:                                              ; preds = %48
  %119 = load i32, i32* %13, align 4
  switch i32 %119, label %121 [
    i32 128, label %120
  ]

120:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %137

121:                                              ; preds = %118
  br label %122

122:                                              ; preds = %121, %117
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ult i32 %124, %127
  br i1 %128, label %34, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %13, align 4
  switch i32 %130, label %136 [
    i32 130, label %131
    i32 129, label %134
    i32 128, label %135
  ]

131:                                              ; preds = %129
  %132 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %133 = call i32 @SCTP_CHUNKMAP_IS_CLEAR(i32* %132)
  store i32 %133, i32* %5, align 4
  br label %137

134:                                              ; preds = %129
  store i32 0, i32* %5, align 4
  br label %137

135:                                              ; preds = %129
  store i32 1, i32* %5, align 4
  br label %137

136:                                              ; preds = %129
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %136, %135, %134, %131, %120, %115, %84, %45
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32 @SCTP_CHUNKMAP_COPY(i32*, i32) #1

declare dso_local %struct.sctp_chunkhdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.sctp_chunkhdr*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @SCTP_PAD4(i32) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i64 @SCTP_CHUNKMAP_IS_SET(i32, i32) #1

declare dso_local i32 @match_flags(%struct.xt_sctp_flag_info*, i32, i32, i32) #1

declare dso_local i32 @SCTP_CHUNKMAP_CLEAR(i32*, i32) #1

declare dso_local i32 @SCTP_CHUNKMAP_IS_CLEAR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
