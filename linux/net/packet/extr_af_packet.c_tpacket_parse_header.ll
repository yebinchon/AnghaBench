; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_tpacket_parse_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_tpacket_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_sock = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%union.tpacket_uhdr = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"variable sized slot not supported\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"packet size is too long (%d > %d)\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.packet_sock*, i8*, i32, i8**)* @tpacket_parse_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpacket_parse_header(%struct.packet_sock* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.packet_sock*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %union.tpacket_uhdr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.packet_sock* %0, %struct.packet_sock** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast %union.tpacket_uhdr* %10 to i8**
  store i8* %15, i8** %16, align 8
  %17 = load %struct.packet_sock*, %struct.packet_sock** %6, align 8
  %18 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %40 [
    i32 128, label %20
    i32 129, label %35
  ]

20:                                               ; preds = %4
  %21 = bitcast %union.tpacket_uhdr* %10 to %struct.TYPE_8__**
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = call i32 @pr_warn_once(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %154

30:                                               ; preds = %20
  %31 = bitcast %union.tpacket_uhdr* %10 to %struct.TYPE_8__**
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  br label %45

35:                                               ; preds = %4
  %36 = bitcast %union.tpacket_uhdr* %10 to %struct.TYPE_9__**
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  br label %45

40:                                               ; preds = %4
  %41 = bitcast %union.tpacket_uhdr* %10 to %struct.TYPE_10__**
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %40, %35, %30
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* @EMSGSIZE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %154

58:                                               ; preds = %45
  %59 = load %struct.packet_sock*, %struct.packet_sock** %6, align 8
  %60 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %140

64:                                               ; preds = %58
  %65 = load %struct.packet_sock*, %struct.packet_sock** %6, align 8
  %66 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = sub i64 %68, 4
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %13, align 4
  %71 = load %struct.packet_sock*, %struct.packet_sock** %6, align 8
  %72 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 %74, %75
  store i32 %76, i32* %14, align 4
  %77 = load %struct.packet_sock*, %struct.packet_sock** %6, align 8
  %78 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SOCK_DGRAM, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %64
  %84 = load %struct.packet_sock*, %struct.packet_sock** %6, align 8
  %85 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %97 [
    i32 128, label %87
    i32 129, label %92
  ]

87:                                               ; preds = %83
  %88 = bitcast %union.tpacket_uhdr* %10 to %struct.TYPE_8__**
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %12, align 4
  br label %102

92:                                               ; preds = %83
  %93 = bitcast %union.tpacket_uhdr* %10 to %struct.TYPE_9__**
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %12, align 4
  br label %102

97:                                               ; preds = %83
  %98 = bitcast %union.tpacket_uhdr* %10 to %struct.TYPE_10__**
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %97, %92, %87
  br label %123

103:                                              ; preds = %64
  %104 = load %struct.packet_sock*, %struct.packet_sock** %6, align 8
  %105 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  switch i32 %106, label %117 [
    i32 128, label %107
    i32 129, label %112
  ]

107:                                              ; preds = %103
  %108 = bitcast %union.tpacket_uhdr* %10 to %struct.TYPE_8__**
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %12, align 4
  br label %122

112:                                              ; preds = %103
  %113 = bitcast %union.tpacket_uhdr* %10 to %struct.TYPE_9__**
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %12, align 4
  br label %122

117:                                              ; preds = %103
  %118 = bitcast %union.tpacket_uhdr* %10 to %struct.TYPE_10__**
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %117, %112, %107
  br label %123

123:                                              ; preds = %122, %102
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %128, %129
  br label %131

131:                                              ; preds = %127, %123
  %132 = phi i1 [ true, %123 ], [ %130, %127 ]
  %133 = zext i1 %132 to i32
  %134 = call i64 @unlikely(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %5, align 4
  br label %154

139:                                              ; preds = %131
  br label %147

140:                                              ; preds = %58
  %141 = load %struct.packet_sock*, %struct.packet_sock** %6, align 8
  %142 = getelementptr inbounds %struct.packet_sock, %struct.packet_sock* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = sub i64 %144, 4
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %140, %139
  %148 = load i8*, i8** %7, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr i8, i8* %148, i64 %150
  %152 = load i8**, i8*** %9, align 8
  store i8* %151, i8** %152, align 8
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %147, %136, %52, %26
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i32 @pr_warn_once(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
