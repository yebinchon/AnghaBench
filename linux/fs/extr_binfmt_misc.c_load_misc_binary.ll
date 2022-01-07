; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_binfmt_misc.c_load_misc_binary.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_binfmt_misc.c_load_misc_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i32, i32, i32, %struct.file*, i32, i32 }
%struct.file = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ENOEXEC = common dso_local global i32 0, align 4
@enabled = common dso_local global i32 0, align 4
@entries_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@BINPRM_FLAGS_PATH_INACCESSIBLE = common dso_local global i32 0, align 4
@MISC_FMT_PRESERVE_ARGV0 = common dso_local global i32 0, align 4
@MISC_FMT_OPEN_BINARY = common dso_local global i32 0, align 4
@BINPRM_FLAGS_EXECFD = common dso_local global i32 0, align 4
@MISC_FMT_OPEN_FILE = common dso_local global i32 0, align 4
@MISC_FMT_CREDENTIALS = common dso_local global i32 0, align 4
@BINPRM_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.linux_binprm*)* @load_misc_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_misc_binary(%struct.linux_binprm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  store %struct.file* null, %struct.file** %5, align 8
  store i32 -1, i32* %7, align 4
  %9 = load i32, i32* @ENOEXEC, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @enabled, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %224

15:                                               ; preds = %1
  %16 = call i32 @read_lock(i32* @entries_lock)
  %17 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %18 = call %struct.TYPE_3__* @check_file(%struct.linux_binprm* %17)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %4, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dget(i32 %24)
  br label %26

26:                                               ; preds = %21, %15
  %27 = call i32 @read_unlock(i32* @entries_lock)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %224

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  %35 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %36 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BINPRM_FLAGS_PATH_INACCESSIBLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %207

42:                                               ; preds = %32
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MISC_FMT_PRESERVE_ARGV0, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %51 = call i32 @remove_arg_zero(%struct.linux_binprm* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %207

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %42
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MISC_FMT_OPEN_BINARY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %56
  %64 = call i32 @get_unused_fd_flags(i32 0)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %6, align 4
  br label %207

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %72 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %71, i32 0, i32 3
  %73 = load %struct.file*, %struct.file** %72, align 8
  %74 = call i32 @fd_install(i32 %70, %struct.file* %73)
  %75 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %76 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %77 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %76, i32 0, i32 3
  %78 = load %struct.file*, %struct.file** %77, align 8
  %79 = call i32 @would_dump(%struct.linux_binprm* %75, %struct.file* %78)
  %80 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %81 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %80, i32 0, i32 3
  %82 = load %struct.file*, %struct.file** %81, align 8
  %83 = call i32 @allow_write_access(%struct.file* %82)
  %84 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %85 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %84, i32 0, i32 3
  store %struct.file* null, %struct.file** %85, align 8
  %86 = load i32, i32* @BINPRM_FLAGS_EXECFD, align 4
  %87 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %88 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %93 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %105

94:                                               ; preds = %56
  %95 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %96 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %95, i32 0, i32 3
  %97 = load %struct.file*, %struct.file** %96, align 8
  %98 = call i32 @allow_write_access(%struct.file* %97)
  %99 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %100 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %99, i32 0, i32 3
  %101 = load %struct.file*, %struct.file** %100, align 8
  %102 = call i32 @fput(%struct.file* %101)
  %103 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %104 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %103, i32 0, i32 3
  store %struct.file* null, %struct.file** %104, align 8
  br label %105

105:                                              ; preds = %94, %69
  %106 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %107 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %106, i32 0, i32 5
  %108 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %109 = call i32 @copy_strings_kernel(i32 1, i32* %107, %struct.linux_binprm* %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %213

113:                                              ; preds = %105
  %114 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %115 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %121 = call i32 @copy_strings_kernel(i32 1, i32* %119, %struct.linux_binprm* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  br label %213

125:                                              ; preds = %113
  %126 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %127 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %134 = call i32 @bprm_change_interp(i32 %132, %struct.linux_binprm* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  br label %213

138:                                              ; preds = %125
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @MISC_FMT_OPEN_FILE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %138
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call %struct.file* @file_clone_open(i32 %148)
  store %struct.file* %149, %struct.file** %5, align 8
  %150 = load %struct.file*, %struct.file** %5, align 8
  %151 = call i64 @IS_ERR(%struct.file* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %145
  %154 = load %struct.file*, %struct.file** %5, align 8
  %155 = call i32 @deny_write_access(%struct.file* %154)
  br label %156

156:                                              ; preds = %153, %145
  br label %162

157:                                              ; preds = %138
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call %struct.file* @open_exec(i32 %160)
  store %struct.file* %161, %struct.file** %5, align 8
  br label %162

162:                                              ; preds = %157, %156
  %163 = load %struct.file*, %struct.file** %5, align 8
  %164 = call i32 @PTR_ERR(%struct.file* %163)
  store i32 %164, i32* %6, align 4
  %165 = load %struct.file*, %struct.file** %5, align 8
  %166 = call i64 @IS_ERR(%struct.file* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %213

169:                                              ; preds = %162
  %170 = load %struct.file*, %struct.file** %5, align 8
  %171 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %172 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %171, i32 0, i32 3
  store %struct.file* %170, %struct.file** %172, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @MISC_FMT_CREDENTIALS, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %169
  store i32 0, i32* %8, align 4
  %180 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %181 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @BINPRM_BUF_SIZE, align 4
  %184 = call i32 @memset(i32 %182, i32 0, i32 %183)
  %185 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %186 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %185, i32 0, i32 3
  %187 = load %struct.file*, %struct.file** %186, align 8
  %188 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %189 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @BINPRM_BUF_SIZE, align 4
  %192 = call i32 @kernel_read(%struct.file* %187, i32 %190, i32 %191, i32* %8)
  store i32 %192, i32* %6, align 4
  br label %196

193:                                              ; preds = %169
  %194 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %195 = call i32 @prepare_binprm(%struct.linux_binprm* %194)
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %193, %179
  %197 = load i32, i32* %6, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  br label %213

200:                                              ; preds = %196
  %201 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %202 = call i32 @search_binary_handler(%struct.linux_binprm* %201)
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %6, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  br label %213

206:                                              ; preds = %200
  br label %207

207:                                              ; preds = %219, %206, %67, %54, %41
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @dput(i32 %210)
  %212 = load i32, i32* %6, align 4
  store i32 %212, i32* %2, align 4
  br label %224

213:                                              ; preds = %205, %199, %168, %137, %124, %112
  %214 = load i32, i32* %7, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32, i32* %7, align 4
  %218 = call i32 @ksys_close(i32 %217)
  br label %219

219:                                              ; preds = %216, %213
  %220 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %221 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %220, i32 0, i32 0
  store i32 0, i32* %221, align 8
  %222 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %223 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %222, i32 0, i32 1
  store i32 0, i32* %223, align 4
  br label %207

224:                                              ; preds = %207, %30, %13
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.TYPE_3__* @check_file(%struct.linux_binprm*) #1

declare dso_local i32 @dget(i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @remove_arg_zero(%struct.linux_binprm*) #1

declare dso_local i32 @get_unused_fd_flags(i32) #1

declare dso_local i32 @fd_install(i32, %struct.file*) #1

declare dso_local i32 @would_dump(%struct.linux_binprm*, %struct.file*) #1

declare dso_local i32 @allow_write_access(%struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @copy_strings_kernel(i32, i32*, %struct.linux_binprm*) #1

declare dso_local i32 @bprm_change_interp(i32, %struct.linux_binprm*) #1

declare dso_local %struct.file* @file_clone_open(i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @deny_write_access(%struct.file*) #1

declare dso_local %struct.file* @open_exec(i32) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @kernel_read(%struct.file*, i32, i32, i32*) #1

declare dso_local i32 @prepare_binprm(%struct.linux_binprm*) #1

declare dso_local i32 @search_binary_handler(%struct.linux_binprm*) #1

declare dso_local i32 @dput(i32) #1

declare dso_local i32 @ksys_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
