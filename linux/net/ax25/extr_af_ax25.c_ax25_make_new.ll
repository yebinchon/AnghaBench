; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_af_ax25.c_ax25_make_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_af_ax25.c_ax25_make_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ax25_dev = type { i32 }
%struct.TYPE_6__ = type { %struct.sock*, i32*, i32, %struct.ax25_dev*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@PF_AX25 = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@ax25_free_sock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @ax25_make_new(%struct.sock* %0, %struct.ax25_dev* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.ax25_dev*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.ax25_dev* %1, %struct.ax25_dev** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call i32 @sock_net(%struct.sock* %9)
  %11 = load i32, i32* @PF_AX25, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.sock* @sk_alloc(i32 %10, i32 %11, i32 %12, i32 %15, i32 0)
  store %struct.sock* %16, %struct.sock** %6, align 8
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = icmp eq %struct.sock* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.sock* null, %struct.sock** %3, align 8
  br label %175

20:                                               ; preds = %2
  %21 = call %struct.TYPE_6__* (...) @ax25_create_cb()
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %7, align 8
  %22 = icmp eq %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.sock*, %struct.sock** %6, align 8
  %25 = call i32 @sk_free(%struct.sock* %24)
  store %struct.sock* null, %struct.sock** %3, align 8
  br label %175

26:                                               ; preds = %20
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %32 [
    i32 129, label %30
    i32 128, label %31
  ]

30:                                               ; preds = %26
  br label %37

31:                                               ; preds = %26
  br label %37

32:                                               ; preds = %26
  %33 = load %struct.sock*, %struct.sock** %6, align 8
  %34 = call i32 @sk_free(%struct.sock* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = call i32 @ax25_cb_put(%struct.TYPE_6__* %35)
  store %struct.sock* null, %struct.sock** %3, align 8
  br label %175

37:                                               ; preds = %31, %30
  %38 = load %struct.sock*, %struct.sock** %6, align 8
  %39 = call i32 @sock_init_data(i32* null, %struct.sock* %38)
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sock*, %struct.sock** %6, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sock*, %struct.sock** %6, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sock*, %struct.sock** %6, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.sock*, %struct.sock** %4, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sock*, %struct.sock** %6, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sock*, %struct.sock** %6, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @TCP_ESTABLISHED, align 4
  %66 = load %struct.sock*, %struct.sock** %6, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.sock*, %struct.sock** %6, align 8
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = call i32 @sock_copy_flags(%struct.sock* %68, %struct.sock* %69)
  %71 = load %struct.sock*, %struct.sock** %4, align 8
  %72 = call %struct.TYPE_6__* @sk_to_ax25(%struct.sock* %71)
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %8, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 15
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 15
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 14
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 14
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 13
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 13
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 12
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 12
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 11
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 11
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 10
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 9
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 8
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 7
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 8
  %133 = load %struct.ax25_dev*, %struct.ax25_dev** %5, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 3
  store %struct.ax25_dev* %133, %struct.ax25_dev** %135, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %163

145:                                              ; preds = %37
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* @GFP_ATOMIC, align 4
  %150 = call i32* @kmemdup(i32* %148, i32 4, i32 %149)
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  store i32* %150, i32** %152, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %145
  %158 = load %struct.sock*, %struct.sock** %6, align 8
  %159 = call i32 @sk_free(%struct.sock* %158)
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %161 = call i32 @ax25_cb_put(%struct.TYPE_6__* %160)
  store %struct.sock* null, %struct.sock** %3, align 8
  br label %175

162:                                              ; preds = %145
  br label %163

163:                                              ; preds = %162, %37
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %165 = load %struct.sock*, %struct.sock** %6, align 8
  %166 = call %struct.TYPE_7__* @ax25_sk(%struct.sock* %165)
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  store %struct.TYPE_6__* %164, %struct.TYPE_6__** %167, align 8
  %168 = load i32, i32* @ax25_free_sock, align 4
  %169 = load %struct.sock*, %struct.sock** %6, align 8
  %170 = getelementptr inbounds %struct.sock, %struct.sock* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load %struct.sock*, %struct.sock** %6, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  store %struct.sock* %171, %struct.sock** %173, align 8
  %174 = load %struct.sock*, %struct.sock** %6, align 8
  store %struct.sock* %174, %struct.sock** %3, align 8
  br label %175

175:                                              ; preds = %163, %157, %32, %23, %19
  %176 = load %struct.sock*, %struct.sock** %3, align 8
  ret %struct.sock* %176
}

declare dso_local %struct.sock* @sk_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.TYPE_6__* @ax25_create_cb(...) #1

declare dso_local i32 @sk_free(%struct.sock*) #1

declare dso_local i32 @ax25_cb_put(%struct.TYPE_6__*) #1

declare dso_local i32 @sock_init_data(i32*, %struct.sock*) #1

declare dso_local i32 @sock_copy_flags(%struct.sock*, %struct.sock*) #1

declare dso_local %struct.TYPE_6__* @sk_to_ax25(%struct.sock*) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @ax25_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
