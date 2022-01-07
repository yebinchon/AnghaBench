; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_hashmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_maps.c_test_hashmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_MAP_TYPE_HASH = common dso_local global i32 0, align 4
@map_flags = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to create hashmap '%s'!\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@BPF_ANY = common dso_local global i32 0, align 4
@BPF_NOEXIST = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@BPF_EXIST = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @test_hashmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hashmap(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @BPF_MAP_TYPE_HASH, align 4
  %11 = load i32, i32* @map_flags, align 4
  %12 = call i32 @bpf_create_map(i32 %10, i32 8, i32 8, i32 2, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i64, i64* @errno, align 8
  %17 = call i8* @strerror(i64 %16)
  %18 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %2
  store i64 1, i64* %5, align 8
  store i64 1234, i64* %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @BPF_ANY, align 4
  %23 = call i32 @bpf_map_update_elem(i32 %21, i64* %5, i64* %8, i32 %22)
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  store i64 0, i64* %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @BPF_NOEXIST, align 4
  %29 = call i32 @bpf_map_update_elem(i32 %27, i64* %5, i64* %8, i32 %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @EEXIST, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %31, %20
  %36 = phi i1 [ false, %20 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @bpf_map_update_elem(i32 %39, i64* %5, i64* %8, i32 -1)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @EINVAL, align 8
  %45 = icmp eq i64 %43, %44
  br label %46

46:                                               ; preds = %42, %35
  %47 = phi i1 [ false, %35 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @bpf_map_lookup_elem(i32 %50, i64* %5, i64* %8)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i64, i64* %8, align 8
  %55 = icmp eq i64 %54, 1234
  br label %56

56:                                               ; preds = %53, %46
  %57 = phi i1 [ false, %46 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  store i64 2, i64* %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @bpf_map_lookup_elem(i32 %60, i64* %5, i64* %8)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i64, i64* @errno, align 8
  %65 = load i64, i64* @ENOENT, align 8
  %66 = icmp eq i64 %64, %65
  br label %67

67:                                               ; preds = %63, %56
  %68 = phi i1 [ false, %56 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @BPF_EXIST, align 4
  %73 = call i32 @bpf_map_update_elem(i32 %71, i64* %5, i64* %8, i32 %72)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i64, i64* @errno, align 8
  %77 = load i64, i64* @ENOENT, align 8
  %78 = icmp eq i64 %76, %77
  br label %79

79:                                               ; preds = %75, %67
  %80 = phi i1 [ false, %67 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @BPF_NOEXIST, align 4
  %85 = call i32 @bpf_map_update_elem(i32 %83, i64* %5, i64* %8, i32 %84)
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  store i64 0, i64* %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @BPF_NOEXIST, align 4
  %91 = call i32 @bpf_map_update_elem(i32 %89, i64* %5, i64* %8, i32 %90)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %97

93:                                               ; preds = %79
  %94 = load i64, i64* @errno, align 8
  %95 = load i64, i64* @E2BIG, align 8
  %96 = icmp eq i64 %94, %95
  br label %97

97:                                               ; preds = %93, %79
  %98 = phi i1 [ false, %79 ], [ %96, %93 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  store i64 1, i64* %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @BPF_EXIST, align 4
  %103 = call i32 @bpf_map_update_elem(i32 %101, i64* %5, i64* %8, i32 %102)
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  store i64 2, i64* %5, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @BPF_ANY, align 4
  %109 = call i32 @bpf_map_update_elem(i32 %107, i64* %5, i64* %8, i32 %108)
  %110 = icmp eq i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @assert(i32 %111)
  store i64 3, i64* %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @BPF_NOEXIST, align 4
  %115 = call i32 @bpf_map_update_elem(i32 %113, i64* %5, i64* %8, i32 %114)
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %121

117:                                              ; preds = %97
  %118 = load i64, i64* @errno, align 8
  %119 = load i64, i64* @E2BIG, align 8
  %120 = icmp eq i64 %118, %119
  br label %121

121:                                              ; preds = %117, %97
  %122 = phi i1 [ false, %97 ], [ %120, %117 ]
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  store i64 0, i64* %5, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @bpf_map_delete_elem(i32 %125, i64* %5)
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = load i64, i64* @errno, align 8
  %130 = load i64, i64* @ENOENT, align 8
  %131 = icmp eq i64 %129, %130
  br label %132

132:                                              ; preds = %128, %121
  %133 = phi i1 [ false, %121 ], [ %131, %128 ]
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @bpf_map_get_next_key(i32 %136, i64* null, i64* %7)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %132
  %140 = load i64, i64* %7, align 8
  %141 = icmp eq i64 %140, 1
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load i64, i64* %7, align 8
  %144 = icmp eq i64 %143, 2
  br label %145

145:                                              ; preds = %142, %139
  %146 = phi i1 [ true, %139 ], [ %144, %142 ]
  br label %147

147:                                              ; preds = %145, %132
  %148 = phi i1 [ false, %132 ], [ %146, %145 ]
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @bpf_map_get_next_key(i32 %151, i64* %5, i64* %6)
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* %7, align 8
  %157 = icmp eq i64 %155, %156
  br label %158

158:                                              ; preds = %154, %147
  %159 = phi i1 [ false, %147 ], [ %157, %154 ]
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @bpf_map_get_next_key(i32 %162, i64* %6, i64* %6)
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %158
  %166 = load i64, i64* %6, align 8
  %167 = icmp eq i64 %166, 1
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load i64, i64* %6, align 8
  %170 = icmp eq i64 %169, 2
  br i1 %170, label %171, label %175

171:                                              ; preds = %168, %165
  %172 = load i64, i64* %6, align 8
  %173 = load i64, i64* %7, align 8
  %174 = icmp ne i64 %172, %173
  br label %175

175:                                              ; preds = %171, %168, %158
  %176 = phi i1 [ false, %168 ], [ false, %158 ], [ %174, %171 ]
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @bpf_map_get_next_key(i32 %179, i64* %6, i64* %6)
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %186

182:                                              ; preds = %175
  %183 = load i64, i64* @errno, align 8
  %184 = load i64, i64* @ENOENT, align 8
  %185 = icmp eq i64 %183, %184
  br label %186

186:                                              ; preds = %182, %175
  %187 = phi i1 [ false, %175 ], [ %185, %182 ]
  %188 = zext i1 %187 to i32
  %189 = call i32 @assert(i32 %188)
  store i64 1, i64* %5, align 8
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @bpf_map_delete_elem(i32 %190, i64* %5)
  %192 = icmp eq i32 %191, 0
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  store i64 2, i64* %5, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @bpf_map_delete_elem(i32 %195, i64* %5)
  %197 = icmp eq i32 %196, 0
  %198 = zext i1 %197 to i32
  %199 = call i32 @assert(i32 %198)
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @bpf_map_delete_elem(i32 %200, i64* %5)
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %207

203:                                              ; preds = %186
  %204 = load i64, i64* @errno, align 8
  %205 = load i64, i64* @ENOENT, align 8
  %206 = icmp eq i64 %204, %205
  br label %207

207:                                              ; preds = %203, %186
  %208 = phi i1 [ false, %186 ], [ %206, %203 ]
  %209 = zext i1 %208 to i32
  %210 = call i32 @assert(i32 %209)
  store i64 0, i64* %5, align 8
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @bpf_map_get_next_key(i32 %211, i64* null, i64* %6)
  %213 = icmp eq i32 %212, -1
  br i1 %213, label %214, label %218

214:                                              ; preds = %207
  %215 = load i64, i64* @errno, align 8
  %216 = load i64, i64* @ENOENT, align 8
  %217 = icmp eq i64 %215, %216
  br label %218

218:                                              ; preds = %214, %207
  %219 = phi i1 [ false, %207 ], [ %217, %214 ]
  %220 = zext i1 %219 to i32
  %221 = call i32 @assert(i32 %220)
  %222 = load i32, i32* %9, align 4
  %223 = call i32 @bpf_map_get_next_key(i32 %222, i64* %5, i64* %6)
  %224 = icmp eq i32 %223, -1
  br i1 %224, label %225, label %229

225:                                              ; preds = %218
  %226 = load i64, i64* @errno, align 8
  %227 = load i64, i64* @ENOENT, align 8
  %228 = icmp eq i64 %226, %227
  br label %229

229:                                              ; preds = %225, %218
  %230 = phi i1 [ false, %218 ], [ %228, %225 ]
  %231 = zext i1 %230 to i32
  %232 = call i32 @assert(i32 %231)
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @close(i32 %233)
  ret void
}

declare dso_local i32 @bpf_create_map(i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bpf_map_update_elem(i32, i64*, i64*, i32) #1

declare dso_local i32 @bpf_map_lookup_elem(i32, i64*, i64*) #1

declare dso_local i32 @bpf_map_delete_elem(i32, i64*) #1

declare dso_local i32 @bpf_map_get_next_key(i32, i64*, i64*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
