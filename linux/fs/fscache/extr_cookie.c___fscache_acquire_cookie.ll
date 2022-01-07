; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_cookie.c___fscache_acquire_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_cookie.c___fscache_acquire_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_cookie = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.fscache_cookie_def = type { i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"{%s},{%s},%p,%u\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"<no-parent>\00", align 1
@fscache_n_acquires = common dso_local global i32 0, align 4
@fscache_n_acquires_null = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c" [no parent]\00", align 1
@fscache_n_acquires_oom = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c" [ENOMEM]\00", align 1
@fscache_cookie_discard = common dso_local global i32 0, align 4
@fscache_n_cookie_index = common dso_local global i32 0, align 4
@fscache_n_cookie_data = common dso_local global i32 0, align 4
@fscache_n_cookie_special = common dso_local global i32 0, align 4
@FSCACHE_COOKIE_ENABLED = common dso_local global i32 0, align 4
@fscache_cookie_put_acquire_nobufs = common dso_local global i32 0, align 4
@fscache_n_acquires_nobufs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c" = NULL\00", align 1
@fscache_n_acquires_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fscache_cookie* @__fscache_acquire_cookie(%struct.fscache_cookie* %0, %struct.fscache_cookie_def* %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.fscache_cookie*, align 8
  %11 = alloca %struct.fscache_cookie*, align 8
  %12 = alloca %struct.fscache_cookie_def*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.fscache_cookie*, align 8
  %21 = alloca %struct.fscache_cookie*, align 8
  store %struct.fscache_cookie* %0, %struct.fscache_cookie** %11, align 8
  store %struct.fscache_cookie_def* %1, %struct.fscache_cookie_def** %12, align 8
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %22 = load %struct.fscache_cookie_def*, %struct.fscache_cookie_def** %12, align 8
  %23 = icmp ne %struct.fscache_cookie_def* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.fscache_cookie*, %struct.fscache_cookie** %11, align 8
  %28 = icmp ne %struct.fscache_cookie* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %9
  %30 = load %struct.fscache_cookie*, %struct.fscache_cookie** %11, align 8
  %31 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  br label %37

36:                                               ; preds = %9
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi i8* [ %35, %29 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %36 ]
  %39 = load %struct.fscache_cookie_def*, %struct.fscache_cookie_def** %12, align 8
  %40 = getelementptr inbounds %struct.fscache_cookie_def, %struct.fscache_cookie_def* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i8*, i8** %17, align 8
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @_enter(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %38, i32* %41, i8* %42, i32 %43)
  %45 = load i8*, i8** %13, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load i64, i64* %14, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i64, i64* %14, align 8
  %52 = icmp ugt i64 %51, 255
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i64, i64* %16, align 8
  %55 = icmp ugt i64 %54, 255
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %50, %47, %37
  store %struct.fscache_cookie* null, %struct.fscache_cookie** %10, align 8
  br label %174

57:                                               ; preds = %53
  %58 = load i8*, i8** %15, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i64, i64* %16, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60, %57
  store i8* null, i8** %15, align 8
  store i64 0, i64* %16, align 8
  br label %64

64:                                               ; preds = %63, %60
  %65 = call i32 @fscache_stat(i32* @fscache_n_acquires)
  %66 = load %struct.fscache_cookie*, %struct.fscache_cookie** %11, align 8
  %67 = icmp ne %struct.fscache_cookie* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = call i32 @fscache_stat(i32* @fscache_n_acquires_null)
  %70 = call i32 @_leave(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store %struct.fscache_cookie* null, %struct.fscache_cookie** %10, align 8
  br label %174

71:                                               ; preds = %64
  %72 = load %struct.fscache_cookie_def*, %struct.fscache_cookie_def** %12, align 8
  %73 = getelementptr inbounds %struct.fscache_cookie_def, %struct.fscache_cookie_def* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUG_ON(i32 %79)
  %81 = load %struct.fscache_cookie_def*, %struct.fscache_cookie_def** %12, align 8
  %82 = getelementptr inbounds %struct.fscache_cookie_def, %struct.fscache_cookie_def* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 128
  br i1 %84, label %85, label %90

85:                                               ; preds = %71
  %86 = load %struct.fscache_cookie*, %struct.fscache_cookie** %11, align 8
  %87 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 128
  br label %90

90:                                               ; preds = %85, %71
  %91 = phi i1 [ false, %71 ], [ %89, %85 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @BUG_ON(i32 %92)
  %94 = load %struct.fscache_cookie*, %struct.fscache_cookie** %11, align 8
  %95 = load %struct.fscache_cookie_def*, %struct.fscache_cookie_def** %12, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = load i64, i64* %16, align 8
  %100 = load i8*, i8** %17, align 8
  %101 = load i32, i32* %18, align 4
  %102 = call %struct.fscache_cookie* @fscache_alloc_cookie(%struct.fscache_cookie* %94, %struct.fscache_cookie_def* %95, i8* %96, i64 %97, i8* %98, i64 %99, i8* %100, i32 %101)
  store %struct.fscache_cookie* %102, %struct.fscache_cookie** %20, align 8
  %103 = load %struct.fscache_cookie*, %struct.fscache_cookie** %20, align 8
  %104 = icmp ne %struct.fscache_cookie* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %90
  %106 = call i32 @fscache_stat(i32* @fscache_n_acquires_oom)
  %107 = call i32 @_leave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store %struct.fscache_cookie* null, %struct.fscache_cookie** %10, align 8
  br label %174

108:                                              ; preds = %90
  %109 = load %struct.fscache_cookie*, %struct.fscache_cookie** %20, align 8
  %110 = call %struct.fscache_cookie* @fscache_hash_cookie(%struct.fscache_cookie* %109)
  store %struct.fscache_cookie* %110, %struct.fscache_cookie** %21, align 8
  %111 = load %struct.fscache_cookie*, %struct.fscache_cookie** %21, align 8
  %112 = icmp ne %struct.fscache_cookie* %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %108
  %114 = load %struct.fscache_cookie*, %struct.fscache_cookie** %20, align 8
  %115 = load i32, i32* @fscache_cookie_discard, align 4
  %116 = call i32 @trace_fscache_cookie(%struct.fscache_cookie* %114, i32 %115, i32 1)
  br label %170

117:                                              ; preds = %108
  %118 = load %struct.fscache_cookie*, %struct.fscache_cookie** %21, align 8
  %119 = load %struct.fscache_cookie*, %struct.fscache_cookie** %20, align 8
  %120 = icmp eq %struct.fscache_cookie* %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store %struct.fscache_cookie* null, %struct.fscache_cookie** %20, align 8
  br label %122

122:                                              ; preds = %121, %117
  %123 = load %struct.fscache_cookie*, %struct.fscache_cookie** %21, align 8
  %124 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  switch i32 %125, label %130 [
    i32 128, label %126
    i32 129, label %128
  ]

126:                                              ; preds = %122
  %127 = call i32 @fscache_stat(i32* @fscache_n_cookie_index)
  br label %132

128:                                              ; preds = %122
  %129 = call i32 @fscache_stat(i32* @fscache_n_cookie_data)
  br label %132

130:                                              ; preds = %122
  %131 = call i32 @fscache_stat(i32* @fscache_n_cookie_special)
  br label %132

132:                                              ; preds = %130, %128, %126
  %133 = load %struct.fscache_cookie*, %struct.fscache_cookie** %21, align 8
  %134 = call i32 @trace_fscache_acquire(%struct.fscache_cookie* %133)
  %135 = load i32, i32* %19, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %168

137:                                              ; preds = %132
  %138 = load %struct.fscache_cookie*, %struct.fscache_cookie** %21, align 8
  %139 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 128
  br i1 %141, label %142, label %162

142:                                              ; preds = %137
  %143 = load %struct.fscache_cookie*, %struct.fscache_cookie** %21, align 8
  %144 = load i32, i32* %18, align 4
  %145 = call i64 @fscache_acquire_non_index_cookie(%struct.fscache_cookie* %143, i32 %144)
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load i32, i32* @FSCACHE_COOKIE_ENABLED, align 4
  %149 = load %struct.fscache_cookie*, %struct.fscache_cookie** %21, align 8
  %150 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %149, i32 0, i32 1
  %151 = call i32 @set_bit(i32 %148, i32* %150)
  br label %161

152:                                              ; preds = %142
  %153 = load %struct.fscache_cookie*, %struct.fscache_cookie** %11, align 8
  %154 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %153, i32 0, i32 2
  %155 = call i32 @atomic_dec(i32* %154)
  %156 = load %struct.fscache_cookie*, %struct.fscache_cookie** %21, align 8
  %157 = load i32, i32* @fscache_cookie_put_acquire_nobufs, align 4
  %158 = call i32 @fscache_cookie_put(%struct.fscache_cookie* %156, i32 %157)
  %159 = call i32 @fscache_stat(i32* @fscache_n_acquires_nobufs)
  %160 = call i32 @_leave(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store %struct.fscache_cookie* null, %struct.fscache_cookie** %10, align 8
  br label %174

161:                                              ; preds = %147
  br label %167

162:                                              ; preds = %137
  %163 = load i32, i32* @FSCACHE_COOKIE_ENABLED, align 4
  %164 = load %struct.fscache_cookie*, %struct.fscache_cookie** %21, align 8
  %165 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %164, i32 0, i32 1
  %166 = call i32 @set_bit(i32 %163, i32* %165)
  br label %167

167:                                              ; preds = %162, %161
  br label %168

168:                                              ; preds = %167, %132
  %169 = call i32 @fscache_stat(i32* @fscache_n_acquires_ok)
  br label %170

170:                                              ; preds = %168, %113
  %171 = load %struct.fscache_cookie*, %struct.fscache_cookie** %20, align 8
  %172 = call i32 @fscache_free_cookie(%struct.fscache_cookie* %171)
  %173 = load %struct.fscache_cookie*, %struct.fscache_cookie** %21, align 8
  store %struct.fscache_cookie* %173, %struct.fscache_cookie** %10, align 8
  br label %174

174:                                              ; preds = %170, %152, %105, %68, %56
  %175 = load %struct.fscache_cookie*, %struct.fscache_cookie** %10, align 8
  ret %struct.fscache_cookie* %175
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @_enter(i8*, i8*, i32*, i8*, i32) #1

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local %struct.fscache_cookie* @fscache_alloc_cookie(%struct.fscache_cookie*, %struct.fscache_cookie_def*, i8*, i64, i8*, i64, i8*, i32) #1

declare dso_local %struct.fscache_cookie* @fscache_hash_cookie(%struct.fscache_cookie*) #1

declare dso_local i32 @trace_fscache_cookie(%struct.fscache_cookie*, i32, i32) #1

declare dso_local i32 @trace_fscache_acquire(%struct.fscache_cookie*) #1

declare dso_local i64 @fscache_acquire_non_index_cookie(%struct.fscache_cookie*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @fscache_cookie_put(%struct.fscache_cookie*, i32) #1

declare dso_local i32 @fscache_free_cookie(%struct.fscache_cookie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
