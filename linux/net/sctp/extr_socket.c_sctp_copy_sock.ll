; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_copy_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_copy_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_association = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.inet_sock = type { i32, i32, i32*, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.sctp_sock = type { i32, %struct.sctp_endpoint* }
%struct.sctp_endpoint = type { i32 }

@sctp_destruct_sock = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@SK_FLAGS_TIMESTAMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_copy_sock(%struct.sock* %0, %struct.sock* %1, %struct.sctp_association* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.inet_sock*, align 8
  %8 = alloca %struct.inet_sock*, align 8
  %9 = alloca %struct.sctp_sock*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %6, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.inet_sock* @inet_sk(%struct.sock* %11)
  store %struct.inet_sock* %12, %struct.inet_sock** %7, align 8
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call %struct.sctp_sock* @sctp_sk(%struct.sock* %13)
  store %struct.sctp_sock* %14, %struct.sctp_sock** %9, align 8
  %15 = load %struct.sctp_sock*, %struct.sctp_sock** %9, align 8
  %16 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %15, i32 0, i32 1
  %17 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %16, align 8
  store %struct.sctp_endpoint* %17, %struct.sctp_endpoint** %10, align 8
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 18
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 18
  store i32 %20, i32* %22, align 8
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 17
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 17
  store i32 %25, i32* %27, align 4
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sock*, %struct.sock** %5, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 16
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 16
  store i32 %35, i32* %37, align 8
  %38 = load %struct.sock*, %struct.sock** %5, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 15
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 15
  store i32 %40, i32* %42, align 4
  %43 = load %struct.sock*, %struct.sock** %5, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 14
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 14
  store i32 %45, i32* %47, align 8
  %48 = load %struct.sock*, %struct.sock** %5, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 13
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sock*, %struct.sock** %4, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 13
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sctp_sock*, %struct.sctp_sock** %9, align 8
  %54 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.sock*, %struct.sock** %4, align 8
  %57 = call %struct.sctp_sock* @sctp_sk(%struct.sock* %56)
  %58 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.sock*, %struct.sock** %5, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 12
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sock*, %struct.sock** %4, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 12
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @sctp_destruct_sock, align 4
  %65 = load %struct.sock*, %struct.sock** %4, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 11
  store i32 %64, i32* %66, align 4
  %67 = load %struct.sock*, %struct.sock** %5, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.sock*, %struct.sock** %4, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 10
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @IPPROTO_SCTP, align 4
  %73 = load %struct.sock*, %struct.sock** %4, align 8
  %74 = getelementptr inbounds %struct.sock, %struct.sock* %73, i32 0, i32 9
  store i32 %72, i32* %74, align 4
  %75 = load %struct.sock*, %struct.sock** %5, align 8
  %76 = getelementptr inbounds %struct.sock, %struct.sock* %75, i32 0, i32 7
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.sock*, %struct.sock** %4, align 8
  %81 = getelementptr inbounds %struct.sock, %struct.sock* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 8
  %82 = load %struct.sock*, %struct.sock** %5, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.sock*, %struct.sock** %4, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.sock*, %struct.sock** %5, align 8
  %88 = getelementptr inbounds %struct.sock, %struct.sock* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sock*, %struct.sock** %4, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.sock*, %struct.sock** %5, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.sock*, %struct.sock** %4, align 8
  %96 = getelementptr inbounds %struct.sock, %struct.sock* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.sock*, %struct.sock** %5, align 8
  %98 = getelementptr inbounds %struct.sock, %struct.sock* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sock*, %struct.sock** %4, align 8
  %101 = getelementptr inbounds %struct.sock, %struct.sock* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.sock*, %struct.sock** %5, align 8
  %103 = getelementptr inbounds %struct.sock, %struct.sock* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.sock*, %struct.sock** %4, align 8
  %106 = getelementptr inbounds %struct.sock, %struct.sock* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.sock*, %struct.sock** %5, align 8
  %108 = getelementptr inbounds %struct.sock, %struct.sock* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.sock*, %struct.sock** %4, align 8
  %111 = getelementptr inbounds %struct.sock, %struct.sock* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.sock*, %struct.sock** %4, align 8
  %113 = call %struct.inet_sock* @inet_sk(%struct.sock* %112)
  store %struct.inet_sock* %113, %struct.inet_sock** %8, align 8
  %114 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %115 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %118 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %117, i32 0, i32 10
  store i32 %116, i32* %118, align 8
  %119 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %120 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %123 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %122, i32 0, i32 9
  store i32 %121, i32* %123, align 4
  %124 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %125 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %128 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 8
  %129 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %130 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @htons(i32 %132)
  %134 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %135 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 4
  %136 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %137 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %140 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 8
  %141 = call i32 (...) @prandom_u32()
  %142 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %143 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  %144 = load %struct.inet_sock*, %struct.inet_sock** %7, align 8
  %145 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %148 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %150 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  %151 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %152 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %151, i32 0, i32 1
  store i32 1, i32* %152, align 4
  %153 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %154 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %153, i32 0, i32 3
  store i64 0, i64* %154, align 8
  %155 = load %struct.inet_sock*, %struct.inet_sock** %8, align 8
  %156 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %155, i32 0, i32 2
  store i32* null, i32** %156, align 8
  %157 = load %struct.sock*, %struct.sock** %4, align 8
  %158 = getelementptr inbounds %struct.sock, %struct.sock* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @SK_FLAGS_TIMESTAMP, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %3
  %164 = call i32 (...) @net_enable_timestamp()
  br label %165

165:                                              ; preds = %163, %3
  %166 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %167 = load %struct.sock*, %struct.sock** %5, align 8
  %168 = load %struct.sock*, %struct.sock** %4, align 8
  %169 = call i32 @security_sctp_sk_clone(%struct.sctp_endpoint* %166, %struct.sock* %167, %struct.sock* %168)
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.sctp_sock* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @net_enable_timestamp(...) #1

declare dso_local i32 @security_sctp_sk_clone(%struct.sctp_endpoint*, %struct.sock*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
