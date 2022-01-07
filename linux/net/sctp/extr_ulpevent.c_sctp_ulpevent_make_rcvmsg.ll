; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_rcvmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_ulpevent.c_sctp_ulpevent_make_rcvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpevent = type { i32, i32, i32, i32, i8*, %struct.sctp_chunk* }
%struct.sctp_association = type { %struct.TYPE_9__, i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.sctp_chunk = type { i64, %struct.TYPE_12__*, %struct.TYPE_11__, i32, %struct.sk_buff* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.sk_buff = type { i64, i64 }

@SCTP_DATA_UNORDERED = common dso_local global i32 0, align 4
@SCTP_UNORDERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_rcvmsg(%struct.sctp_association* %0, %struct.sctp_chunk* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_ulpevent*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_ulpevent*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %8, align 8
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %15 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %14, i32 0, i32 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %16, %struct.sk_buff** %9, align 8
  %17 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %18 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.sock*, %struct.sock** %19, align 8
  store %struct.sock* %20, %struct.sock** %10, align 8
  %21 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %29 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %28, i32 0, i32 1
  %30 = call i32 @atomic_read(i32* %29)
  store i32 %30, i32* %13, align 4
  br label %35

31:                                               ; preds = %3
  %32 = load %struct.sock*, %struct.sock** %10, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 1
  %34 = call i32 @atomic_read(i32* %33)
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %37 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @ntohs(i32 %40)
  %42 = ptrtoint i8* %41 to i64
  store i64 %42, i64* %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.sock*, %struct.sock** %10, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %35
  %49 = load %struct.sock*, %struct.sock** %10, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @sk_rmem_schedule(%struct.sock* %49, %struct.sk_buff* %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48, %35
  br label %165

55:                                               ; preds = %48
  %56 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %57 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %56, i32 0, i32 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %58, i32 %59)
  store %struct.sk_buff* %60, %struct.sk_buff** %9, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  br label %165

64:                                               ; preds = %55
  %65 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %66 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %69 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ntohl(i32 %73)
  %75 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %76 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @sctp_tsnmap_mark(i32* %67, i32 %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  br label %162

81:                                               ; preds = %64
  %82 = load i64, i64* %12, align 8
  %83 = call i64 @SCTP_PAD4(i64 %82)
  %84 = load i64, i64* %12, align 8
  %85 = sub i64 %83, %84
  store i64 %85, i64* %11, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %88 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %11, align 8
  %91 = sub i64 %89, %90
  %92 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub i64 %91, %94
  %96 = call i32 @skb_trim(%struct.sk_buff* %86, i64 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %98 = call %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff* %97)
  store %struct.sctp_ulpevent* %98, %struct.sctp_ulpevent** %8, align 8
  %99 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, 16
  %104 = call i32 @sctp_ulpevent_init(%struct.sctp_ulpevent* %99, i32 0, i64 %103)
  %105 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %106 = call i32 @sctp_chunk_hold(%struct.sctp_chunk* %105)
  %107 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %108 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %109 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %108, i32 0, i32 5
  store %struct.sctp_chunk* %107, %struct.sctp_chunk** %109, align 8
  %110 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %111 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %112 = call i32 @sctp_ulpevent_receive_data(%struct.sctp_ulpevent* %110, %struct.sctp_association* %111)
  %113 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %114 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @ntohs(i32 %118)
  %120 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %121 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %120, i32 0, i32 4
  store i8* %119, i8** %121, align 8
  %122 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %123 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %122, i32 0, i32 1
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @SCTP_DATA_UNORDERED, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %81
  %131 = load i32, i32* @SCTP_UNORDERED, align 4
  %132 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %133 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  %136 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %137 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = call i32 @sctp_tsnmap_get_ctsn(i32* %138)
  %140 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %141 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %130, %81
  %143 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %144 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ntohl(i32 %148)
  %150 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %151 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %153 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %152, i32 0, i32 1
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  %158 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %8, align 8
  store %struct.sctp_ulpevent* %161, %struct.sctp_ulpevent** %4, align 8
  br label %166

162:                                              ; preds = %80
  %163 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %164 = call i32 @kfree_skb(%struct.sk_buff* %163)
  br label %165

165:                                              ; preds = %162, %63, %54
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %4, align 8
  br label %166

166:                                              ; preds = %165, %142
  %167 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %4, align 8
  ret %struct.sctp_ulpevent* %167
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @sk_rmem_schedule(%struct.sock*, %struct.sk_buff*, i64) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i64 @sctp_tsnmap_mark(i32*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @SCTP_PAD4(i64) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local %struct.sctp_ulpevent* @sctp_skb2event(%struct.sk_buff*) #1

declare dso_local i32 @sctp_ulpevent_init(%struct.sctp_ulpevent*, i32, i64) #1

declare dso_local i32 @sctp_chunk_hold(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_ulpevent_receive_data(%struct.sctp_ulpevent*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_tsnmap_get_ctsn(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
