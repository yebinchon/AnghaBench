; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_sb_to_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c_xfs_sb_to_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dsb = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.xfs_sb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_sb_to_disk(%struct.xfs_dsb* %0, %struct.xfs_sb* %1) #0 {
  %3 = alloca %struct.xfs_dsb*, align 8
  %4 = alloca %struct.xfs_sb*, align 8
  store %struct.xfs_dsb* %0, %struct.xfs_dsb** %3, align 8
  store %struct.xfs_sb* %1, %struct.xfs_sb** %4, align 8
  %5 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %6 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %7 = call i32 @xfs_sb_quota_to_disk(%struct.xfs_dsb* %5, %struct.xfs_sb* %6)
  %8 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %8, i32 0, i32 49
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @cpu_to_be32(i32 %10)
  %12 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %13 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %12, i32 0, i32 49
  store i8* %11, i8** %13, align 8
  %14 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %15 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %14, i32 0, i32 48
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @cpu_to_be32(i32 %16)
  %18 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %19 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %18, i32 0, i32 48
  store i8* %17, i8** %19, align 8
  %20 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %20, i32 0, i32 47
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @cpu_to_be64(i32 %22)
  %24 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %25 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %24, i32 0, i32 47
  store i8* %23, i8** %25, align 8
  %26 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %27 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %26, i32 0, i32 46
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @cpu_to_be64(i32 %28)
  %30 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %31 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %30, i32 0, i32 46
  store i8* %29, i8** %31, align 8
  %32 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %33 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %32, i32 0, i32 45
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @cpu_to_be64(i32 %34)
  %36 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %37 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %36, i32 0, i32 45
  store i8* %35, i8** %37, align 8
  %38 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %39 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %38, i32 0, i32 44
  %40 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %41 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %40, i32 0, i32 44
  %42 = call i32 @memcpy(i32* %39, i32* %41, i32 4)
  %43 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %44 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %43, i32 0, i32 43
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @cpu_to_be64(i32 %45)
  %47 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %48 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %47, i32 0, i32 43
  store i8* %46, i8** %48, align 8
  %49 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %50 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %49, i32 0, i32 42
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @cpu_to_be64(i32 %51)
  %53 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %54 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %53, i32 0, i32 42
  store i8* %52, i8** %54, align 8
  %55 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %56 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %55, i32 0, i32 41
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_be64(i32 %57)
  %59 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %60 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %59, i32 0, i32 41
  store i8* %58, i8** %60, align 8
  %61 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %62 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %61, i32 0, i32 40
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_be64(i32 %63)
  %65 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %66 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %65, i32 0, i32 40
  store i8* %64, i8** %66, align 8
  %67 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %68 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %67, i32 0, i32 39
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_be32(i32 %69)
  %71 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %72 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %71, i32 0, i32 39
  store i8* %70, i8** %72, align 8
  %73 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %74 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %73, i32 0, i32 38
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %78 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %77, i32 0, i32 38
  store i8* %76, i8** %78, align 8
  %79 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %80 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %79, i32 0, i32 37
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @cpu_to_be32(i32 %81)
  %83 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %84 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %83, i32 0, i32 37
  store i8* %82, i8** %84, align 8
  %85 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %86 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %85, i32 0, i32 36
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @cpu_to_be32(i32 %87)
  %89 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %90 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %89, i32 0, i32 36
  store i8* %88, i8** %90, align 8
  %91 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %92 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %91, i32 0, i32 35
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @cpu_to_be32(i32 %93)
  %95 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %96 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %95, i32 0, i32 35
  store i8* %94, i8** %96, align 8
  %97 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %98 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %97, i32 0, i32 34
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @cpu_to_be16(i32 %99)
  %101 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %102 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %101, i32 0, i32 34
  store i8* %100, i8** %102, align 8
  %103 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %104 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %103, i32 0, i32 33
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @cpu_to_be16(i32 %105)
  %107 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %108 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %107, i32 0, i32 33
  store i8* %106, i8** %108, align 8
  %109 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %110 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %109, i32 0, i32 32
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @cpu_to_be16(i32 %111)
  %113 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %114 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %113, i32 0, i32 32
  store i8* %112, i8** %114, align 8
  %115 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %116 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %115, i32 0, i32 31
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @cpu_to_be16(i32 %117)
  %119 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %120 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %119, i32 0, i32 31
  store i8* %118, i8** %120, align 8
  %121 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %122 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %121, i32 0, i32 30
  %123 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %124 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %123, i32 0, i32 30
  %125 = call i32 @memcpy(i32* %122, i32* %124, i32 4)
  %126 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %127 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %126, i32 0, i32 29
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %130 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %129, i32 0, i32 29
  store i32 %128, i32* %130, align 4
  %131 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %132 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %131, i32 0, i32 28
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %135 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %134, i32 0, i32 28
  store i32 %133, i32* %135, align 8
  %136 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %137 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %136, i32 0, i32 27
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %140 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %139, i32 0, i32 27
  store i32 %138, i32* %140, align 4
  %141 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %142 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %141, i32 0, i32 26
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %145 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %144, i32 0, i32 26
  store i32 %143, i32* %145, align 8
  %146 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %147 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %146, i32 0, i32 25
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %150 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %149, i32 0, i32 25
  store i32 %148, i32* %150, align 4
  %151 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %152 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %151, i32 0, i32 24
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %155 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %154, i32 0, i32 24
  store i32 %153, i32* %155, align 8
  %156 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %157 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %156, i32 0, i32 23
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %160 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %159, i32 0, i32 23
  store i32 %158, i32* %160, align 4
  %161 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %162 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %161, i32 0, i32 22
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %165 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %164, i32 0, i32 22
  store i32 %163, i32* %165, align 8
  %166 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %167 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %166, i32 0, i32 21
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @cpu_to_be64(i32 %168)
  %170 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %171 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %170, i32 0, i32 21
  store i8* %169, i8** %171, align 8
  %172 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %173 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %172, i32 0, i32 20
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @cpu_to_be64(i32 %174)
  %176 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %177 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %176, i32 0, i32 20
  store i8* %175, i8** %177, align 8
  %178 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %179 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %178, i32 0, i32 19
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @cpu_to_be64(i32 %180)
  %182 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %183 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %182, i32 0, i32 19
  store i8* %181, i8** %183, align 8
  %184 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %185 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %184, i32 0, i32 18
  %186 = load i32, i32* %185, align 4
  %187 = call i8* @cpu_to_be64(i32 %186)
  %188 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %189 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %188, i32 0, i32 18
  store i8* %187, i8** %189, align 8
  %190 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %191 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %190, i32 0, i32 17
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %194 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %193, i32 0, i32 17
  store i32 %192, i32* %194, align 4
  %195 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %196 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %195, i32 0, i32 16
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %199 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %198, i32 0, i32 16
  store i32 %197, i32* %199, align 8
  %200 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %201 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %200, i32 0, i32 15
  %202 = load i32, i32* %201, align 4
  %203 = call i8* @cpu_to_be32(i32 %202)
  %204 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %205 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %204, i32 0, i32 15
  store i8* %203, i8** %205, align 8
  %206 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %207 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %206, i32 0, i32 14
  %208 = load i32, i32* %207, align 4
  %209 = call i8* @cpu_to_be32(i32 %208)
  %210 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %211 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %210, i32 0, i32 14
  store i8* %209, i8** %211, align 8
  %212 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %213 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %212, i32 0, i32 13
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @cpu_to_be32(i32 %214)
  %216 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %217 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %216, i32 0, i32 13
  store i8* %215, i8** %217, align 8
  %218 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %219 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %218, i32 0, i32 12
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %222 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %221, i32 0, i32 12
  store i32 %220, i32* %222, align 4
  %223 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %224 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %223, i32 0, i32 11
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %227 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %226, i32 0, i32 11
  store i32 %225, i32* %227, align 8
  %228 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %229 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %228, i32 0, i32 10
  %230 = load i32, i32* %229, align 4
  %231 = call i8* @cpu_to_be16(i32 %230)
  %232 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %233 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %232, i32 0, i32 10
  store i8* %231, i8** %233, align 8
  %234 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %235 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %234, i32 0, i32 9
  %236 = load i32, i32* %235, align 4
  %237 = call i8* @cpu_to_be32(i32 %236)
  %238 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %239 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %238, i32 0, i32 9
  store i8* %237, i8** %239, align 8
  %240 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %241 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %240, i32 0, i32 8
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %244 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %243, i32 0, i32 7
  store i32 %242, i32* %244, align 4
  %245 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %246 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %245, i32 0, i32 8
  %247 = load i32, i32* %246, align 4
  %248 = call i8* @cpu_to_be32(i32 %247)
  %249 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %250 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %249, i32 0, i32 8
  store i8* %248, i8** %250, align 8
  %251 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %252 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %251, i32 0, i32 7
  %253 = load i32, i32* %252, align 4
  %254 = call i8* @cpu_to_be32(i32 %253)
  %255 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %256 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %255, i32 0, i32 7
  store i8* %254, i8** %256, align 8
  %257 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %258 = call i64 @xfs_sb_version_hascrc(%struct.xfs_sb* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %307

260:                                              ; preds = %2
  %261 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %262 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 4
  %264 = call i8* @cpu_to_be32(i32 %263)
  %265 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %266 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %265, i32 0, i32 6
  store i8* %264, i8** %266, align 8
  %267 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %268 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = call i8* @cpu_to_be32(i32 %269)
  %271 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %272 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %271, i32 0, i32 5
  store i8* %270, i8** %272, align 8
  %273 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %274 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 4
  %276 = call i8* @cpu_to_be32(i32 %275)
  %277 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %278 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %277, i32 0, i32 4
  store i8* %276, i8** %278, align 8
  %279 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %280 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = call i8* @cpu_to_be32(i32 %281)
  %283 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %284 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %283, i32 0, i32 3
  store i8* %282, i8** %284, align 8
  %285 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %286 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = call i8* @cpu_to_be32(i32 %287)
  %289 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %290 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %289, i32 0, i32 2
  store i8* %288, i8** %290, align 8
  %291 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %292 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i8* @cpu_to_be64(i32 %293)
  %295 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %296 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %295, i32 0, i32 1
  store i8* %294, i8** %296, align 8
  %297 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %298 = call i64 @xfs_sb_version_hasmetauuid(%struct.xfs_sb* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %260
  %301 = load %struct.xfs_dsb*, %struct.xfs_dsb** %3, align 8
  %302 = getelementptr inbounds %struct.xfs_dsb, %struct.xfs_dsb* %301, i32 0, i32 0
  %303 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %304 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %303, i32 0, i32 0
  %305 = call i32 @uuid_copy(i32* %302, i32* %304)
  br label %306

306:                                              ; preds = %300, %260
  br label %307

307:                                              ; preds = %306, %2
  ret void
}

declare dso_local i32 @xfs_sb_quota_to_disk(%struct.xfs_dsb*, %struct.xfs_sb*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i64 @xfs_sb_version_hascrc(%struct.xfs_sb*) #1

declare dso_local i64 @xfs_sb_version_hasmetauuid(%struct.xfs_sb*) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
