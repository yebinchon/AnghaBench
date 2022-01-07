; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_open_control.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_open_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.tomoyo_io_buffer* }
%struct.tomoyo_io_buffer = type { i32, i32, i32, %struct.tomoyo_io_buffer*, i8*, i32*, i32*, i32*, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tomoyo_write_domain = common dso_local global i32* null, align 8
@tomoyo_read_domain = common dso_local global i32* null, align 8
@tomoyo_write_exception = common dso_local global i32* null, align 8
@tomoyo_read_exception = common dso_local global i32* null, align 8
@tomoyo_poll_log = common dso_local global i32* null, align 8
@tomoyo_read_log = common dso_local global i32* null, align 8
@tomoyo_write_pid = common dso_local global i32* null, align 8
@tomoyo_read_pid = common dso_local global i32* null, align 8
@tomoyo_read_version = common dso_local global i32* null, align 8
@tomoyo_write_stat = common dso_local global i32* null, align 8
@tomoyo_read_stat = common dso_local global i32* null, align 8
@tomoyo_write_profile = common dso_local global i32* null, align 8
@tomoyo_read_profile = common dso_local global i32* null, align 8
@tomoyo_poll_query = common dso_local global i32* null, align 8
@tomoyo_write_answer = common dso_local global i32* null, align 8
@tomoyo_read_query = common dso_local global i32* null, align 8
@tomoyo_write_manager = common dso_local global i32* null, align 8
@tomoyo_read_manager = common dso_local global i32* null, align 8
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@tomoyo_query_observers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_open_control(i32 %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.tomoyo_io_buffer*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @GFP_NOFS, align 4
  %8 = call i8* @kzalloc(i32 64, i32 %7)
  %9 = bitcast i8* %8 to %struct.tomoyo_io_buffer*
  store %struct.tomoyo_io_buffer* %9, %struct.tomoyo_io_buffer** %6, align 8
  %10 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %11 = icmp ne %struct.tomoyo_io_buffer* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %186

15:                                               ; preds = %2
  %16 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %16, i32 0, i32 8
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %21 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %90 [
    i32 135, label %23
    i32 134, label %30
    i32 136, label %37
    i32 132, label %44
    i32 128, label %51
    i32 129, label %57
    i32 131, label %66
    i32 130, label %73
    i32 133, label %83
  ]

23:                                               ; preds = %15
  %24 = load i32*, i32** @tomoyo_write_domain, align 8
  %25 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %25, i32 0, i32 5
  store i32* %24, i32** %26, align 8
  %27 = load i32*, i32** @tomoyo_read_domain, align 8
  %28 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %28, i32 0, i32 7
  store i32* %27, i32** %29, align 8
  br label %90

30:                                               ; preds = %15
  %31 = load i32*, i32** @tomoyo_write_exception, align 8
  %32 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %32, i32 0, i32 5
  store i32* %31, i32** %33, align 8
  %34 = load i32*, i32** @tomoyo_read_exception, align 8
  %35 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %36 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %35, i32 0, i32 7
  store i32* %34, i32** %36, align 8
  br label %90

37:                                               ; preds = %15
  %38 = load i32*, i32** @tomoyo_poll_log, align 8
  %39 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %39, i32 0, i32 6
  store i32* %38, i32** %40, align 8
  %41 = load i32*, i32** @tomoyo_read_log, align 8
  %42 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %43 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %42, i32 0, i32 7
  store i32* %41, i32** %43, align 8
  br label %90

44:                                               ; preds = %15
  %45 = load i32*, i32** @tomoyo_write_pid, align 8
  %46 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %47 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %46, i32 0, i32 5
  store i32* %45, i32** %47, align 8
  %48 = load i32*, i32** @tomoyo_read_pid, align 8
  %49 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %50 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %49, i32 0, i32 7
  store i32* %48, i32** %50, align 8
  br label %90

51:                                               ; preds = %15
  %52 = load i32*, i32** @tomoyo_read_version, align 8
  %53 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %54 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %53, i32 0, i32 7
  store i32* %52, i32** %54, align 8
  %55 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %55, i32 0, i32 1
  store i32 128, i32* %56, align 4
  br label %90

57:                                               ; preds = %15
  %58 = load i32*, i32** @tomoyo_write_stat, align 8
  %59 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %59, i32 0, i32 5
  store i32* %58, i32** %60, align 8
  %61 = load i32*, i32** @tomoyo_read_stat, align 8
  %62 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %63 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %62, i32 0, i32 7
  store i32* %61, i32** %63, align 8
  %64 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %65 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %64, i32 0, i32 1
  store i32 1024, i32* %65, align 4
  br label %90

66:                                               ; preds = %15
  %67 = load i32*, i32** @tomoyo_write_profile, align 8
  %68 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %68, i32 0, i32 5
  store i32* %67, i32** %69, align 8
  %70 = load i32*, i32** @tomoyo_read_profile, align 8
  %71 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %72 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %71, i32 0, i32 7
  store i32* %70, i32** %72, align 8
  br label %90

73:                                               ; preds = %15
  %74 = load i32*, i32** @tomoyo_poll_query, align 8
  %75 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %76 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %75, i32 0, i32 6
  store i32* %74, i32** %76, align 8
  %77 = load i32*, i32** @tomoyo_write_answer, align 8
  %78 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %79 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %78, i32 0, i32 5
  store i32* %77, i32** %79, align 8
  %80 = load i32*, i32** @tomoyo_read_query, align 8
  %81 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %82 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %81, i32 0, i32 7
  store i32* %80, i32** %82, align 8
  br label %90

83:                                               ; preds = %15
  %84 = load i32*, i32** @tomoyo_write_manager, align 8
  %85 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %86 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %85, i32 0, i32 5
  store i32* %84, i32** %86, align 8
  %87 = load i32*, i32** @tomoyo_read_manager, align 8
  %88 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %89 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %88, i32 0, i32 7
  store i32* %87, i32** %89, align 8
  br label %90

90:                                               ; preds = %15, %83, %73, %66, %57, %51, %44, %37, %30, %23
  %91 = load %struct.file*, %struct.file** %5, align 8
  %92 = getelementptr inbounds %struct.file, %struct.file* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @FMODE_READ, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %99 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %98, i32 0, i32 7
  store i32* null, i32** %99, align 8
  %100 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %101 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %100, i32 0, i32 6
  store i32* null, i32** %101, align 8
  br label %135

102:                                              ; preds = %90
  %103 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %104 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %103, i32 0, i32 6
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %134, label %107

107:                                              ; preds = %102
  %108 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %109 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %114 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %113, i32 0, i32 1
  store i32 8192, i32* %114, align 4
  br label %115

115:                                              ; preds = %112, %107
  %116 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %117 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @GFP_NOFS, align 4
  %120 = call i8* @kzalloc(i32 %118, i32 %119)
  %121 = bitcast i8* %120 to %struct.tomoyo_io_buffer*
  %122 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %123 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %122, i32 0, i32 3
  store %struct.tomoyo_io_buffer* %121, %struct.tomoyo_io_buffer** %123, align 8
  %124 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %125 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %124, i32 0, i32 3
  %126 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %125, align 8
  %127 = icmp ne %struct.tomoyo_io_buffer* %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %115
  %129 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %130 = call i32 @kfree(%struct.tomoyo_io_buffer* %129)
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %186

133:                                              ; preds = %115
  br label %134

134:                                              ; preds = %133, %102
  br label %135

135:                                              ; preds = %134, %97
  %136 = load %struct.file*, %struct.file** %5, align 8
  %137 = getelementptr inbounds %struct.file, %struct.file* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @FMODE_WRITE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %135
  %143 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %144 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %143, i32 0, i32 5
  store i32* null, i32** %144, align 8
  br label %175

145:                                              ; preds = %135
  %146 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %147 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %146, i32 0, i32 5
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %174

150:                                              ; preds = %145
  %151 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %152 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %151, i32 0, i32 2
  store i32 8192, i32* %152, align 8
  %153 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %154 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @GFP_NOFS, align 4
  %157 = call i8* @kzalloc(i32 %155, i32 %156)
  %158 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %159 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %158, i32 0, i32 4
  store i8* %157, i8** %159, align 8
  %160 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %161 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %160, i32 0, i32 4
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %173, label %164

164:                                              ; preds = %150
  %165 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %166 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %165, i32 0, i32 3
  %167 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %166, align 8
  %168 = call i32 @kfree(%struct.tomoyo_io_buffer* %167)
  %169 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %170 = call i32 @kfree(%struct.tomoyo_io_buffer* %169)
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %186

173:                                              ; preds = %150
  br label %174

174:                                              ; preds = %173, %145
  br label %175

175:                                              ; preds = %174, %142
  %176 = load i32, i32* %4, align 4
  %177 = icmp eq i32 %176, 130
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = call i32 @atomic_inc(i32* @tomoyo_query_observers)
  br label %180

180:                                              ; preds = %178, %175
  %181 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %182 = load %struct.file*, %struct.file** %5, align 8
  %183 = getelementptr inbounds %struct.file, %struct.file* %182, i32 0, i32 1
  store %struct.tomoyo_io_buffer* %181, %struct.tomoyo_io_buffer** %183, align 8
  %184 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %6, align 8
  %185 = call i32 @tomoyo_notify_gc(%struct.tomoyo_io_buffer* %184, i32 1)
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %180, %164, %128, %12
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kfree(%struct.tomoyo_io_buffer*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @tomoyo_notify_gc(%struct.tomoyo_io_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
