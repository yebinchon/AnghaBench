; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_ioctl_set_client_pool.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_ioctl_set_client_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client = type { i64, i64, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.snd_seq_client_pool = type { i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_SEQ_MAX_EVENTS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@USER_CLIENT = common dso_local global i64 0, align 8
@SNDRV_SEQ_MAX_CLIENT_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_client*, i8*)* @snd_seq_ioctl_set_client_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_seq_ioctl_set_client_pool(%struct.snd_seq_client* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_seq_client_pool*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_seq_client* %0, %struct.snd_seq_client** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.snd_seq_client_pool*
  store %struct.snd_seq_client_pool* %9, %struct.snd_seq_client_pool** %6, align 8
  %10 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %11 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %14 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %168

20:                                               ; preds = %2
  %21 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %22 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %23, 1
  br i1 %24, label %25, label %85

25:                                               ; preds = %20
  %26 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %27 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SNDRV_SEQ_MAX_EVENTS, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %85

31:                                               ; preds = %25
  %32 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %33 = call i64 @snd_seq_write_pool_allocated(%struct.snd_seq_client* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %37 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %40 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %38, %43
  br i1 %44, label %45, label %85

45:                                               ; preds = %35, %31
  %46 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %47 = call i64 @snd_seq_write_pool_allocated(%struct.snd_seq_client* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %51 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %50, i32 0, i32 2
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = call i64 @atomic_read(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %168

59:                                               ; preds = %49
  %60 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %61 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %60, i32 0, i32 2
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = call i32 @snd_seq_pool_mark_closing(%struct.TYPE_8__* %62)
  %64 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %65 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %64, i32 0, i32 2
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = call i32 @snd_seq_pool_done(%struct.TYPE_8__* %66)
  br label %68

68:                                               ; preds = %59, %45
  %69 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %70 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %73 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %72, i32 0, i32 2
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 4
  %76 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %77 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %76, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = call i32 @snd_seq_pool_init(%struct.TYPE_8__* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %168

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84, %35, %25, %20
  %86 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %87 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @USER_CLIENT, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %141

91:                                               ; preds = %85
  %92 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %93 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %141

98:                                               ; preds = %91
  %99 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %100 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp sge i32 %101, 1
  br i1 %102, label %103, label %141

103:                                              ; preds = %98
  %104 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %105 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SNDRV_SEQ_MAX_CLIENT_EVENTS, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %141

109:                                              ; preds = %103
  %110 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %111 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %114 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %112, %117
  br i1 %118, label %119, label %141

119:                                              ; preds = %109
  %120 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %121 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %126 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @snd_seq_fifo_resize(i32* %124, i32 %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %119
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %3, align 4
  br label %168

133:                                              ; preds = %119
  %134 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %135 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %138 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  store i32 %136, i32* %140, align 8
  br label %141

141:                                              ; preds = %133, %109, %103, %98, %91, %85
  %142 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %143 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = icmp sge i32 %144, 1
  br i1 %145, label %146, label %164

146:                                              ; preds = %141
  %147 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %148 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %151 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %150, i32 0, i32 2
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp sle i32 %149, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %146
  %157 = load %struct.snd_seq_client_pool*, %struct.snd_seq_client_pool** %6, align 8
  %158 = getelementptr inbounds %struct.snd_seq_client_pool, %struct.snd_seq_client_pool* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %161 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %160, i32 0, i32 2
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  store i32 %159, i32* %163, align 4
  br label %164

164:                                              ; preds = %156, %146, %141
  %165 = load %struct.snd_seq_client*, %struct.snd_seq_client** %4, align 8
  %166 = load i8*, i8** %5, align 8
  %167 = call i32 @snd_seq_ioctl_get_client_pool(%struct.snd_seq_client* %165, i8* %166)
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %164, %131, %82, %56, %17
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i64 @snd_seq_write_pool_allocated(%struct.snd_seq_client*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @snd_seq_pool_mark_closing(%struct.TYPE_8__*) #1

declare dso_local i32 @snd_seq_pool_done(%struct.TYPE_8__*) #1

declare dso_local i32 @snd_seq_pool_init(%struct.TYPE_8__*) #1

declare dso_local i32 @snd_seq_fifo_resize(i32*, i32) #1

declare dso_local i32 @snd_seq_ioctl_get_client_pool(%struct.snd_seq_client*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
