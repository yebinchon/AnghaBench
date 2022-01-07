; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pipe.c_pipe_set_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pipe.c_pipe_set_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32, i32, i32, i32, %struct.pipe_buffer* }
%struct.pipe_buffer = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@pipe_max_size = common dso_local global i32 0, align 4
@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pipe_inode_info*, i64)* @pipe_set_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pipe_set_size(%struct.pipe_inode_info* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pipe_inode_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pipe_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %10, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @round_pipe_size(i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @PAGE_SHIFT, align 4
  %17 = lshr i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %3, align 8
  br label %185

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %26 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ugt i32 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @pipe_max_size, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %35 = call i32 @capable(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* @EPERM, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %3, align 8
  br label %185

40:                                               ; preds = %33, %29, %23
  %41 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %42 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %45 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @account_pipe_buffers(i32 %43, i32 %46, i32 %47)
  store i64 %48, i64* %9, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %51 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ugt i32 %49, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %40
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @too_many_pipe_buffers_hard(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %9, align 8
  %60 = call i64 @too_many_pipe_buffers_soft(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58, %54
  %63 = call i64 (...) @is_unprivileged_user()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* @EPERM, align 8
  %67 = sub nsw i64 0, %66
  store i64 %67, i64* %10, align 8
  br label %175

68:                                               ; preds = %62, %58, %40
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %71 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i64, i64* @EBUSY, align 8
  %76 = sub nsw i64 0, %75
  store i64 %76, i64* %10, align 8
  br label %175

77:                                               ; preds = %68
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %80 = load i32, i32* @__GFP_NOWARN, align 4
  %81 = or i32 %79, %80
  %82 = call %struct.pipe_buffer* @kcalloc(i32 %78, i32 4, i32 %81)
  store %struct.pipe_buffer* %82, %struct.pipe_buffer** %6, align 8
  %83 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %84 = icmp ne %struct.pipe_buffer* %83, null
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %77
  %90 = load i64, i64* @ENOMEM, align 8
  %91 = sub nsw i64 0, %90
  store i64 %91, i64* %10, align 8
  br label %175

92:                                               ; preds = %77
  %93 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %94 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %158

97:                                               ; preds = %92
  %98 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %99 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %102 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add i32 %100, %103
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %107 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ult i32 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %97
  store i32 0, i32* %11, align 4
  br label %118

111:                                              ; preds = %97
  %112 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %113 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sub i32 %114, 1
  %116 = load i32, i32* %11, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %111, %110
  %119 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %120 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %11, align 4
  %123 = sub i32 %121, %122
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %118
  %127 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %128 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %129 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %128, i32 0, i32 4
  %130 = load %struct.pipe_buffer*, %struct.pipe_buffer** %129, align 8
  %131 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %132 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %130, i64 %134
  %136 = load i32, i32* %12, align 4
  %137 = zext i32 %136 to i64
  %138 = mul i64 %137, 4
  %139 = trunc i64 %138 to i32
  %140 = call i32 @memcpy(%struct.pipe_buffer* %127, %struct.pipe_buffer* %135, i32 %139)
  br label %141

141:                                              ; preds = %126, %118
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %141
  %145 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %146 = load i32, i32* %12, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %145, i64 %147
  %149 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %150 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %149, i32 0, i32 4
  %151 = load %struct.pipe_buffer*, %struct.pipe_buffer** %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = zext i32 %152 to i64
  %154 = mul i64 %153, 4
  %155 = trunc i64 %154 to i32
  %156 = call i32 @memcpy(%struct.pipe_buffer* %148, %struct.pipe_buffer* %151, i32 %155)
  br label %157

157:                                              ; preds = %144, %141
  br label %158

158:                                              ; preds = %157, %92
  %159 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %160 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %159, i32 0, i32 2
  store i32 0, i32* %160, align 8
  %161 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %162 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %161, i32 0, i32 4
  %163 = load %struct.pipe_buffer*, %struct.pipe_buffer** %162, align 8
  %164 = call i32 @kfree(%struct.pipe_buffer* %163)
  %165 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %166 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %167 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %166, i32 0, i32 4
  store %struct.pipe_buffer* %165, %struct.pipe_buffer** %167, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %170 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @PAGE_SIZE, align 4
  %173 = mul i32 %171, %172
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %3, align 8
  br label %185

175:                                              ; preds = %89, %74, %65
  %176 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %177 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %4, align 8
  %181 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i64 @account_pipe_buffers(i32 %178, i32 %179, i32 %182)
  %184 = load i64, i64* %10, align 8
  store i64 %184, i64* %3, align 8
  br label %185

185:                                              ; preds = %175, %158, %37, %20
  %186 = load i64, i64* %3, align 8
  ret i64 %186
}

declare dso_local i32 @round_pipe_size(i64) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @account_pipe_buffers(i32, i32, i32) #1

declare dso_local i64 @too_many_pipe_buffers_hard(i64) #1

declare dso_local i64 @too_many_pipe_buffers_soft(i64) #1

declare dso_local i64 @is_unprivileged_user(...) #1

declare dso_local %struct.pipe_buffer* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(%struct.pipe_buffer*, %struct.pipe_buffer*, i32) #1

declare dso_local i32 @kfree(%struct.pipe_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
